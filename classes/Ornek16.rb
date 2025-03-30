class Ornek16
  def self.class_description
    "Girilen iki Sayının EBOB ve EKOK'nu hesaplayan program!"
  end
  def self.get_input_form
    [
      { name: 'sayi1', label: 'Birinci sayıyı giriniz' },
      { name: 'sayi2', label: 'İkinci sayıyı giriniz' }
    ]
  end

  def self.run(inputs)
    sayi1 = inputs['sayi1'].to_i
    sayi2 = inputs['sayi2'].to_i
    ebob = 1
    ekok = 1
    min = [sayi1, sayi2].min
    max = [sayi1, sayi2].max

    for i in 1..min
      if sayi1 % i == 0 && sayi2 % i == 0
        ebob = i
      end
    end

    for i in max..(sayi1 * sayi2)
      if i % sayi1 == 0 && i % sayi2 == 0
        ekok = i
        break
      end
    end

    "Seçilen 2 sayının EBOBU = #{ebob}, EKOKU = #{ekok} idir."
  end
end