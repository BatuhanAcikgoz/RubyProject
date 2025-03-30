class Ornek1
  def self.class_description
    "C cinsinden girilen sıcaklığı F'e çeviren program!"
  end
  def self.get_input_form
    [
      { name: 'C', label: 'C cinsinden sıcaklığı giriniz' }
    ]
  end

  def self.run(inputs)
    c = inputs['C'].to_f
    f = (c * (9.0 / 5.0)) + 32.0
    "#{c}C derece #{f}F sıcaklığa eşittir!"
  end
end