class Ornek7
  def self.class_description
    "Temudan alınan ürünlerin alınabilirliğini ve son ödeme tutarını gösteren program!"
  end
  def self.get_input_form
    [
      { name: 'sepet_tutari', label: 'Sepet tutarını giriniz' }
    ]
  end

  def self.run(inputs)
    sepet_tutari = inputs['sepet_tutari'].to_f
    odeme_tutari = 0.0
    if sepet_tutari <= 1050.0 && sepet_tutari >= 650
      odeme_tutari = sepet_tutari + (sepet_tutari * 0.60)
    else
      return "Sepet tutarı 650TL ile 1050TL arasında olmalıdır!"
    end
    "Ödemeniz gereken tutar #{odeme_tutari}TL'dir"
  end
end