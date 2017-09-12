#!/usr/bin/env ruby

class Triangles
  def initialize(side1, side2, side3)
    @side1= side1.to_i
    @side2 = side2.to_i
    @side3 = side3.to_i
  end

  def triangle_type
    if is_equilateral?
      return "This is an equilateral triangle."
    elsif is_scalene?
      return "This is a scalene triangle."
    elsif not_a_triangle?
      return "This is NOT a triangle."
    else
      return "This is an isosceles triangle."
    end
  end

  def is_equilateral?
    if (@side1 == @side2 && @side1 == @side3 && @side2 == @side3)
      true
    end
  end

  def not_a_triangle?
    if (((@side3 + @side2) <= @side1) || ((@side3 + @side1) <= @side2) || ((@side1 + @side2) <= @side3))
      true
    end
  end

  def is_isoceles?
    if ((@side1 == @side2) || (@side1 == @side3) || (@side3 == @side2))
      true
    end
  end

  def is_scalene?
    if (@side1 != @side2 && @side2 != @side3 && @side3 != @side1)
      true
    end
  end
end
