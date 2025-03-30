class Ornek19
  def self.class_description
    "Girilen sayının fibonacci dizisinde olup olmadığını kontrol eden program!"
  end
  def self.get_input_form
    [
      { name: 'sayi', label: 'Sayıyı giriniz' }
    ]
  end

  def self.run(inputs)
    sayi = inputs['sayi'].to_i
    a = 0
    b = 1
    bulundu = false

    for i in 1..10000
      if a > sayi
        break
      end
      if a == sayi
        bulundu = true
        break
      end
      temp = a + b
      a = b
      b = temp
    end

    if bulundu
      "#{sayi} sayısı Fibonacci dizisindedir!"
    else
      "#{sayi} sayısı Fibonacci dizisinde değildir!"
    end
  end
end