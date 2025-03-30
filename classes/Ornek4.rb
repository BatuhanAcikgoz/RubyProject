class Ornek4
  def self.class_description
    "Girilen hız ve mesafeye göre arabanın hedefe kaç dk'da varacağını bulan program!"
  end
  def self.get_input_form
    [
      { name: 'hiz', label: 'Hızı giriniz' },
      { name: 'mesafe', label: 'Mesafeyi giriniz' }
    ]
  end

  def self.run(inputs)
    hiz = inputs['hiz'].to_i
    mesafe = inputs['mesafe'].to_i
    zaman = (mesafe / hiz.to_f) * 60
    "Araba hedefe #{zaman} dakikada varır!"
  end
end