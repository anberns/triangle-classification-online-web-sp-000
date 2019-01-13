class Triangle
  
  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2 
    @s3 = s3
  end 
  
  def kind 
    if @s1 <= 0 || @s2 <= 0 || @s3 <= 0 
      begin 
        raise TriangleError
        rescue TriangleError => error 
          puts error.message 
        
    end
    
    if @s1 == @s2 && @s1 == @s3 
      return :equilateral
    elsif @s1 == @s2 || @s1 == @s3 || @s2 == @s3 
      return :isosceles 
    else 
      return :scalene 
    end 
  end
  
  class TriangleError < StandardErrord
    def message 
      "something is wrong with your side values"
    end
  end
    
    
end


  