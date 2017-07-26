class NotANumberException < StandardError
end

class Calculator
  HATA_MESAJI = "Lütfen bir sayı giriniz."

  def topla(sayi1, sayi2)
    numbers?(sayi1, sayi2)
    sayi1 + sayi2
  end

  def cikar(sayi1, sayi2)
    numbers?(sayi1, sayi2)
    sayi1 - sayi2
  end

  def carpma(sayi1, sayi2)
    numbers?(sayi1, sayi2)
    sayi1 * sayi2
  end

  def bolme(sayi1, sayi2)
    numbers?(sayi1, sayi2)
    fail ZeroDivisionError, "Bir sayı sıfıra bölünemez!" if sayi2 == 0
    sayi1 / sayi2
  end

  private

  def numbers?(*numbers)
    fail NotANumberException, HATA_MESAJI unless [*numbers].all? {|sayi| sayi.is_a?(Fixnum)}
  end
end
