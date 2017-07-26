require "calculator"

RSpec.describe Calculator do
  before do
    @calculator = Calculator.new
  end

  context "#topla" do
    it "returns sum of number 1 and number 2" do
      expect(@calculator.topla(3, 5)).to eq 8
    end

    it "raises not a number error" do
      expect {@calculator.topla("Serdar", 5)}.to raise_error(NotANumberException, "Lütfen bir sayı giriniz.")
    end
  end

  context "#cikar" do
    it "returns extract of number 1 and number 2" do
      expect(@calculator.cikar(5, 3)).to eq 2
    end

    it "raises not a number error" do
      expect {@calculator.cikar("Serdar", 5)}.to raise_error(NotANumberException, "Lütfen bir sayı giriniz.")
    end
  end

  context "#carpma" do
    it "returns multiplied result of number 1 and number 2" do
      expect(@calculator.carpma(5, 3)).to eq 15
    end

    it "raises not a number error" do
      expect {@calculator.carpma("Serdar", 5)}.to raise_error(NotANumberException, "Lütfen bir sayı giriniz.")
    end
  end

  context "#bolme" do
    it "returns divided result of number 1 and number 2" do
      expect(@calculator.bolme(15, 3)).to eq 5
    end

    it "raises not a number error" do
      expect {@calculator.bolme("Serdar", 5)}.to raise_error(NotANumberException, "Lütfen bir sayı giriniz.")
    end

    it "handles zero division error" do
      expect {@calculator.bolme(15, 0)}.to raise_error(ZeroDivisionError, "Bir sayı sıfıra bölünemez!")
    end
  end
end
