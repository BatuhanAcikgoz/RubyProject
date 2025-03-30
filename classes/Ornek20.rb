class Ornek20
  def self.class_description
    "1’den klavyeden girilen sayıya kadar olan sayılardan 12’ye bölünenlerin toplamını bulan program!"
  end
  def self.get_input_form
    [
      { name: 'sayi', label: 'Kaça kadar gideceğini giriniz' }
    ]
  end

  def self.run(inputs)
    sayi = inputs['sayi'].to_i
    toplam = 0

    for i in 1...sayi
      if i % 12 == 0
        toplam += i
      end
    end

    "1'den #{sayi} kadar olan sayılardan 12'ye bölünenlerin toplamı #{toplam}'dir"
  end
end