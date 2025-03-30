# `classes/` klasöründeki tüm Ruby dosyalarını otomatik olarak yükler
Dir[File.join(__dir__, 'classes', '*.rb')].each { |file| require file }
