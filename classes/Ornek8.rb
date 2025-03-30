class Ornek8
  def self.class_description
    "Kenar uzunluklarına göre üçgen tipini belirleyen program!"
  end
  def self.get_input_form
    [
      { name: 'kenar1', label: 'Birinci kenar uzunluğunu giriniz' },
      { name: 'kenar2', label: 'İkinci kenar uzunluğunu giriniz' },
      { name: 'kenar3', label: 'Üçüncü kenar uzunluğunu giriniz' }
    ]
  end

  def self.run(inputs)
    kenar1 = inputs['kenar1'].to_i
    kenar2 = inputs['kenar2'].to_i
    kenar3 = inputs['kenar3'].to_i

    if kenar1 == kenar2 && kenar2 == kenar3
      "Eşkenar üçgendir."
    elsif kenar1 == kenar2 || kenar2 == kenar3 || kenar1 == kenar3
      "İkizkenar üçgendir."
    else
      "Çeşitkenar üçgendir."
    end
  end
end