


class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @b = b
    @c = c
  end

  def kind
    if kosher_triangle == true && kosher_triangle2 == true 
      puts true 
    else 
      raise TriangleError 
    end 
    
    if a == b && b == c && a == c
      :equilateral
    elsif a != b && b != c && c != a
      :scalene 
    else 
      :isosceles
    end 
  end
  
  def kosher_triangle 
    a.positive? && b.positive? && c.positive?
  end 
  
  def kosher_triangle2 
    a + b > c && a + c > b && b + c > a
  end 
end

class TriangleError < StandardError
end
