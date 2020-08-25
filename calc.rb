class Calc
  attr_accessor :x
  def initialize(x) 
    @x = x
  end 

  def self.operation(operator, x, y)
    x.public_send operator, y
  end

  def clear
    self.x = nil
  end
end
