class Ornek12
  def self.class_description
    "Girilen sayıya yakın en küçük asal sayıyı bulan program!"
  end
  def self.get_input_form
    [
      { name: 'sayi', label: 'Sayıyı giriniz' }
    ]
  end

  def self.run(inputs)
    sayi = inputs['sayi'].to_i
    for n in (sayi - 1).downto(1)
      asal_mi = true
      for i in 2..Math.sqrt(n)
        if n % i == 0
          asal_mi = false
          break
        end
      end
      if asal_mi
        return "#{sayi} sayısına yakın en küçük asal sayı #{n}'dir"
      end
    end
  end
end