require_relative "./calc"

RSpec.describe Calc do
  describe ".operation" do 
    it "retorna 3 para operação de soma" do
      result = Calc.operation(:+, 1, 2)
      expect(result).to eq 3
    end

    it "retorna 4 quando 8 é dividido por 2" do
      result = Calc.operation(:/, 8, 2)
      expect(result).to eq 4
    end

    it "retorna erro quando qualquer número é dividido por 0" do
      expect{Calc.operation(:/, 5, 0)}.to raise_error ZeroDivisionError 
    end

    it "retorna 6 quanto 3 é multiplicado por 2" do
      result = Calc.operation(:*, 3, 2)
      expect(result).to eq 6
    end

    it "retorna resto da divisão de 5 dividido por 2 como 1" do 
      result = Calc.operation(:%, 5, 2)
      expect(result).to eq 1
    end

    it "retorna 2 elevado a 2 é igual a 4" do
      result = Calc.operation(:**, 2, 2)
      expect(result).to eq 4
    end
  end

  describe "#clear" do
    it "muda o valor de x e y para nil" do
      c = Calc.new(10, 30)
      c.clear
      expect(c.x).to be_nil
      expect(c.y).to be_nil
    end
  end

  describe "#operation" do 
    it "retorna 3 para operação de soma" do
      result = Calc.new(1, 2).operation(:+)
      expect(result).to eq 3
    end

    it "retorna 4 quando 8 é dividido por 2" do
      result = Calc.new(8, 2).operation(:/)
      expect(result).to eq 4
    end

    it "retorna erro quando qualquer número é dividido por 0" do
      expect{Calc.new(5, 0).operation(:/)}.to raise_error ZeroDivisionError
    end

    it "retorna 6 quanto 3 é multiplicado por 2" do
      result = Calc.new(3, 2).operation(:*)
      expect(result).to eq 6
    end

    it "retorna resto da divisão de 5 dividido por 2 como 1" do 
      result = Calc.new(5, 2).operation(:%)
      expect(result).to eq 1
    end

    it "retorna 2 elevado a 2 é igual a 4" do
      result = Calc.new(2, 2).operation(:**)
      expect(result).to eq 4
    end
  end


end 


