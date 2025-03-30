class Ornek10
  def self.class_description
    "Girilen boy ve kiloya göre vücut kitle endeksini gösteren program!"
  end
  def self.get_input_form
    [
      { name: 'boy_cm', label: 'Santim cinsinden boyunuzu giriniz' },
      { name: 'kilo', label: 'Kilonuzu giriniz' }
    ]
  end

  def self.run(inputs)
    boy_cm = inputs['boy_cm'].to_f
    kilo = inputs['kilo'].to_f
    boy_m = boy_cm / 100
    bmi = kilo / (boy_m * boy_m)

    if bmi < 18.5
      "Zayıf"
    elsif bmi >= 18.5 && bmi < 25
      "Normal"
    elsif bmi >= 25 && bmi < 30
      "Fazla Kilolu"
    else
      "Obez"
    end
  end
end