class Ornek14
  def self.class_description
    "Girilen sayının lasa sayı olup olmadığını bulan program!"
  end
  def self.get_input_form
    [
      { name: 'sayi', label: 'Sayıyı giriniz' }
    ]
  end

  def self.run(inputs)
    sayi = inputs['sayi'].to_i
    ters = 0
    gecici = sayi
    asal_mi = true

    for i in 2...(sayi - 1)
      if sayi % i == 0
        asal_mi = false
        break
      end
    end

    while gecici > 0
      basamak = gecici % 10
      ters = ters * 10 + basamak
      gecici /= 10
    end

    if asal_mi && ters == sayi
      "#{sayi} sayısı bir lasa sayıdır"
    else
      "#{sayi} sayısı bir lasa sayı değildir"
    end
  end
end