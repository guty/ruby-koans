# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sides_sizes = [a, b, c].sort
  different_sides = sides_sizes.uniq.count
  biggest_side = sides_sizes[2]
  middle_side = sides_sizes[1]
  smallest_side = sides_sizes[0]

  if sides_sizes.include?(0)
    raise TriangleError, 'One or more sides size are 0 or less'
  elsif (middle_side + smallest_side) <= biggest_side
    raise TriangleError,
          "Doesn't comply with triangle's existence rule (3 different sides)"
  end

  # begin
  #   if sides_sizes.include?(0)
  #     raise TriangleError, 'One or more sides size are 0 or less'
  #   elsif (middle_side + smallest_side) <= biggest_side
  #     raise TriangleError,
  #           "Doesn't comply with triangle's existence rule (3 different sides)"
  #   end
  # rescue TriangleError => ex
  #   :triangle_exception
  # end

  case different_sides
  when 1
    :equilateral
  when 2
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
