class Triangle
  
end

















class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
 
  def initialize(name)
    @name = name
  end
 
  def kind(triangle)
    self.partner = triangle
    if triangle.class != Triangle
      begin
        raise TriangleError
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
