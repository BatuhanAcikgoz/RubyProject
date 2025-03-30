class Ornek13
  def self.class_description
    "Girilen sayının armstrong sayı olup olmadığını bulan program!"
  end
  def self.get_input_form
    [
      { name: 'sayi', label: 'Sayıyı giriniz' }
    ]
  end

  def self.run(inputs)
    sayi = inputs['sayi'].to_i
    gecici = sayi
    basamak_sayisi = 0
    toplam = 0

    while gecici > 0
      gecici /= 10
      basamak_sayisi += 1
    end

    gecici = sayi
    basamak_sayisi.times do
      basamak = gecici % 10
      kuvvet = 1
      basamak_sayisi.times { kuvvet *= basamak }
      toplam += kuvvet
      gecici /= 10
    end

    if toplam == sayi
      "#{sayi} bir armstrong sayısıdır!"
    else
      "#{sayi} bir armstrong sayısı değildir!"
    end
  end
end