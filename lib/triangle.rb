


class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b    #side_1=a side_2=b side_3=c
    @c = c
  end


def kind()
    if (@a <= 0) || (@b <= 0) || (@c <= 0)
      raise TriangleError
    elsif (@a+@b <= @c) || (@a+@c <= @b) || (@side_2+@side_3 <= @side_1)
      raise TriangleError
    else
      if (@side_1 == @side_2) && (@side_2 == @side_3)
        :equilateral
      elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        :isosceles
      elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene
      end
    end

  end

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
