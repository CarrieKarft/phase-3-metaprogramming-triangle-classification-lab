class Triangle
  # write code here
  attr_accessor :sideA, :sideB, :sideC
  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def kind
    if (@sideA <= 0 || @sideB <= 0) || @sideC <= 0
      raise TriangleError
    elsif (@sideA + @sideB <= @sideC || @sideA + @sideC <= @sideB) || @sideB + @sideC <= @sideA 
      raise TriangleError
    elsif @sideA == @sideB && @sideA == @sideC
      :equilateral
    elsif (@sideA == @sideB || @sideA == @sideC) || @sideB == @sideC
      :isosceles
    elsif (@sideA != @sideB && sideA != @sideC) && @sideB != @sideC
      :scalene
    # elsif (@sideA <= 0 || @sideB <= 0) || @sideC <= 0
    #   raise TriangleError
    # # elsif negitive sides
    # #   raise TriangleError
    # elsif (@sideA + @sideB < @sideC || @sideB + @sideC < @sideA) || @sideA + @sideC < @sideB
    #   raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "your triangle is messed up"
    end
  end
end
# puts Triangle.new(1, 1, 3).kind
#  puts Triangle.new(3, 3, 0).kind