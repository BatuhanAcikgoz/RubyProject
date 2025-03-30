class Ornek15
  def self.class_description
    "Girilen 2 kangurunun konumu ve zıplama mesafesine göre bu iki kanguru aynı yerde buluşabilir mi EVET, HAYIR şeklinde cevap veren program!"
  end
  def self.get_input_form
    [
      { name: 'x1', label: 'Kanguru 1 konumu giriniz' },
      { name: 'v1', label: 'Kanguru 1 zıplama mesafesini giriniz' },
      { name: 'x2', label: 'Kanguru 2 konumu giriniz' },
      { name: 'v2', label: 'Kanguru 2 zıplama mesafesini giriniz' }
    ]
  end

  def self.run(inputs)
    x1 = inputs['x1'].to_i
    v1 = inputs['v1'].to_i
    x2 = inputs['x2'].to_i
    v2 = inputs['v2'].to_i

    if (x1 > x2 && v1 > v2) || (x2 > x1 && v2 > v1)
      "HAYIR"
    else
      karsilasti_mi = false
      for i in (x1...10000).step(v1)
        break if karsilasti_mi
        for j in (x2...10000).step(v2)
          if i == j
            karsilasti_mi = true
            break
          end
        end
      end
      karsilasti_mi ? "EVET" : "HAYIR"
    end
  end
end