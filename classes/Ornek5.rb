class Ornek5
  def self.class_description
    "Girilen yıla göre ışığın aldığı mesafeyi ölçen program!"
  end
  def self.get_input_form
    [
      { name: 'yil', label: 'Yıl giriniz' }
    ]
  end

  def self.run(inputs)
    yil = inputs['yil'].to_f
    isik_hizi = 300000.0
    saniye_yil = 31557600.0
    mesafe = isik_hizi * saniye_yil * yil
    "Işık #{yil} yılda #{mesafe} kilometre yol alır!"
  end
end