class Ornek18
  def self.class_description
    "Girilen sayı büyüklüğünde çapraz çizgi ( X ) deseni oluşturan program!"
  end
  def self.get_input_form
    [
      { name: 'n', label: 'Sayıyı giriniz' }
    ]
  end

  def self.run(inputs)
    n = inputs['n'].to_i
    line = ""
    for i in 0...n
      for j in 0...n
        if i == j || (i + j) == (n - 1)
          line += "*"
        else
          line += " "
        end
      end
      line += "\n"
    end
    return line
  end
end
