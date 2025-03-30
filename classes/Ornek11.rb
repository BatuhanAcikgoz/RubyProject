class Ornek11
  def self.class_description
    "Girilen sayının tam kare olup olmadığını gösteren program!"
  end
  def self.get_input_form
    [
      { name: 'sayi', label: 'Sayıyı giriniz' }
    ]
  end

  def self.run(inputs)
    sayi = inputs['sayi'].to_f
    tamkare = false

    (1..sayi).each do |i|
      if i * i == sayi
        tamkare = true
        break
      end
    end

    if tamkare
      "Tam karedir"
    else
      "Tam kare değildir!"
    end
  end
end