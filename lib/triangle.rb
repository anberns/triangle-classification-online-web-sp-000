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
    
    if sorted_sides[0] + sorted_sides[1]
    
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


it 'knows that triangles with no size are illegal' do
    expect{Triangle.new(0, 0, 0).kind}.to raise_error(Triangle::TriangleError)
  end

  it 'knows that triangles with negative sides are illegal' do
    expect{Triangle.new(3, 4, -5).kind}.to raise_error(Triangle::TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal' do
    expect{Triangle.new(1, 1, 3).kind}.to raise_error(Triangle::TriangleError)
  end