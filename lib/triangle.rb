class Triangle
  # write code here

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

  def kind
    if (@side1 || @side2 || @side3 < 1) || (@side1 + @side2 <= @side3) || (@side2 + @side3 <= @side1)
#      begin
        raise TriangleError
#      rescue TriangleError => error
#        puts error.message

    elsif @side1 && @side2 == @side 3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 #relying on order of the conditionals here
      :isosceles
    elsif @side1 && @side2 != @side3
      :scelene
  end
  
end

class TriangleError < StandardError
  
end