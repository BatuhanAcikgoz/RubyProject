class Ornek2
  def self.class_description
    "Girilen mol, sıcaklık ve hacime göre kabın içindeki basıncı ölçen program!"
  end
  def self.get_input_form
    [
      { name: 'mol', label: 'Mol miktarını giriniz' },
      { name: 'sicaklik', label: 'C cinsinden sıcaklığı giriniz' },
      { name: 'hacim', label: 'Hacim giriniz' }
    ]
  end

  def self.run(inputs)
    mol = inputs['mol'].to_f
    sicaklik = inputs['sicaklik'].to_f
    hacim = inputs['hacim'].to_f
    sicaklik_kelvin = sicaklik + 273.15
    r = 0.0821
    basinc = (mol * r * sicaklik_kelvin) / hacim
    "Kabın içindeki basınç #{basinc}'a eşittir!"
  end
end