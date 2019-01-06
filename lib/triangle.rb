


class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
 
  def initialize(:equilateral, :isosceles, :scalene)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
    end
 
  def kind(triangle)
    self.partner = triangle
    if triangle.class != Triangle
      
    
      rescue TriangleError => error
          puts error.message
      end
    else
      triangle.partner = self
    end
  end
 
  class TriangleError < StandardError
  end
  
end
