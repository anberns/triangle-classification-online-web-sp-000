class Triangle
  
  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2 
    @s3 = s3
  end 
  
  def kind 
    if @s1 <= 0 || @s2 <= 0 || @s3 <= 0 
      raise TriangleError
    end
    sorted_sides = []
    sorted_sides << @s1
    sorted_sides << @s2
    sorted_sides << @s3
    sorted_sides.sort!
    
    if sorted_sides[0] + sorted_sides[1] <= sorted_sides[2] 
      raise TriangleError
    end 
    
    if @s1 == @s2 && @s1 == @s3 
      return :equilateral
    elsif @s1 == @s2 || @s1 == @s3 || @s2 == @s3 
      return :isosceles 
    else 
      return :scalene 
    end 
  end
  
  class TriangleError < StandardError
  end
    
    
end


