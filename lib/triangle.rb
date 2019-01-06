class Triangle
  
end

















class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
 
  def initialize(name)
    @name = name
  end
 
  def get_married(person)
    self.partner = triangle
    if person.class != Triangle
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    else
      person.partner = self
    end
  end
 
  class TriangleError < StandardError
    
  end
  
end
