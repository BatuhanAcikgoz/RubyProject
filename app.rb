# app.rb
# encoding: utf-8
require 'sinatra'
require 'fileutils'
require 'rack/protection'

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8


set :bind, '0.0.0.0'

# Klasörden Ruby dosyalarını dinamik olarak yükleyin
def load_classes
  class_files = Dir["./classes/*.rb"]
  class_files.map do |file|
    load file
    class_name = File.basename(file, ".rb")
    class_constant = Object.const_get(class_name)
    { name: class_name, file: file, class_description: class_constant.class_description }
  end.sort_by { |klass| klass[:name].scan(/\d+/).first.to_i }
end

get '/' do
  # Dinamik olarak sınıfları yükleyin
  classes = load_classes
  erb :index, locals: { classes: classes }
end

post '/ornek' do
  class_name = params[:class_name]
  class_file = "./classes/#{class_name}.rb"

  # Sınıf dosyasını yükle ve formu oluştur
  load class_file

  # Her sınıfın input için nasıl bir veri beklediğini kontrol et
  class_constant = Object.const_get(class_name)
  input_form = class_constant.get_input_form
  class_description = class_constant.class_description
  class_code = File.read(class_file)

  erb :result, locals: { class_name: class_name, input_form: input_form, class_description: class_description, class_code: class_code }
end

post '/run_class' do
  class_name = params[:class_name]
  class_file = "./classes/#{class_name}.rb"
  inputs = params[:inputs] # Girdiler

  # Sınıf dosyasını yükle
  load class_file

  # Her sınıfın run metodunu çalıştır
  class_constant = Object.const_get(class_name)
  output = class_constant.run(inputs)

  # Kaynak kodunu almak için dosya içeriğini okuma
  class_code = File.read(class_file)
  class_description = class_constant.class_description

  erb :result, locals: { class_name: class_name, input_form: class_constant.get_input_form, output: output, class_code: class_code, class_description: class_description }
end