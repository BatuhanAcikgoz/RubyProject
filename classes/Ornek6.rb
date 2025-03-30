class Ornek6
  def self.class_description
    "Mil cinsinden girilen mesafeyi kilometreye çeviren program!"
  end
  def self.get_input_form
    [
      { name: 'mil', label: 'Mil giriniz' }
    ]
  end

  def self.run(inputs)
    mil = inputs['mil'].to_f
    kilometre = mil * 1.60934
    "#{mil} mil #{kilometre} kilometreye karşılık gelir!"
  end
end