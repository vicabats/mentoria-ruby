class Calc
  attr_accessor :x, :y
  def initialize(x, y) 
    @x = x
    @y = y
  end 

  def self.operation(operator, x, y)
    x.public_send operator, y
  end

  def clear
    self.x = nil
    self.y = nil
  end

  def operation(operator)
    x.public_send operator, y
  end  
end
