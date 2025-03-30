class Ornek3
  def self.class_description
    "Girilen 5 basamaklı sayının tersini yazan program!"
  end
  def self.get_input_form
    [
      { name: 'sayi', label: '5 basamaklı sayıyı giriniz' }
    ]
  end

  def self.run(inputs)
    sayi = inputs['sayi'].to_i
    b1 = sayi % 10
    b2 = (sayi % 100) - b1
    b3 = (sayi % 1000) - (b1 + b2)
    b4 = (sayi % 10000) - (b1 + b2 + b3)
    b5 = sayi - (sayi % 10000)
    yenisayi = (b5 / 10000) + (b4 / 100) + b3 + (b2 * 100) + (b1 * 10000)
    "Girilen #{sayi} sayısının tersi #{yenisayi} dir!"
  end
end