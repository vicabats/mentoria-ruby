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
  end

  describe "#clear" do
    it "muda o valor de x para nil" do
      c = Calc.new(10)
      expect{c.clear}.to change(c, :x).to nil
    end
  end
end 


