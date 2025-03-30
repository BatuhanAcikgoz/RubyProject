class Ornek17
  def self.class_description
    "Kg tavuk ve tavşan sayısına göre tavuk sayısının tavşan sayısını ne zaman geçeceğini hesaplayan program. Tavuk sayısı her yıl %10, Tavşan her yıl %5 artıyor!"
  end
  def self.get_input_form
    [
      { name: 'tavsan', label: 'Tavşan sayısı giriniz' },
      { name: 'tavuk', label: 'Tavuk sayısı giriniz' }
    ]
  end

  def self.run(inputs)
    tavsan = inputs['tavsan'].to_f
    tavuk = inputs['tavuk'].to_f

    if tavuk > tavsan
      "Tavuk sayısı zaten tavşan sayısından fazla!"
    else
      for i in 1..10000
        tavuk += tavuk * 0.10
        tavsan += tavsan * 0.05
        if tavuk > tavsan
          return "#{i} yıl sonra tavuk sayısı tavşan sayısını geçer"
        end
      end
    end
  end
end