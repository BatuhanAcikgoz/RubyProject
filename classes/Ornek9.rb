class Ornek9
  def self.class_description
    "Girilen gezegen ismi ve dünyadaki kilomuza göre belirtilen gezegende kaç kilo olduğumuzu bulan program!"
  end
  def self.get_input_form
    [
      { name: 'kilo', label: 'Dünyadaki kilonuzu giriniz' },
      { name: 'gezegen', label: 'Gezegen ismi giriniz' }
    ]
  end

  def self.run(inputs)
    kilo = inputs['kilo'].to_f
    gezegen = inputs['gezegen']
    gezegen_kilo = 0.0

    case gezegen
    when "Merkür"
      gezegen_kilo = kilo * 0.38
    when "Venüs"
      gezegen_kilo = kilo * 0.91
    when "Mars"
      gezegen_kilo = kilo * 0.38
    when "Jüpiter"
      gezegen_kilo = kilo * 2.34
    when "Satürn"
      gezegen_kilo = kilo * 1.06
    when "Uranüs"
      gezegen_kilo = kilo * 0.92
    when "Neptün"
      gezegen_kilo = kilo * 1.19
    else
      return "Düzgün gezegen adı giriniz!"
    end

    "#{gezegen} gezegenindeki kilonuz #{gezegen_kilo}kg'dir" if gezegen_kilo > 0.0
  end
end