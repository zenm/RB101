# input: three integers of the length of the size of a triangle
# output: symbol of the type of triangle

# if any of the sides is zero or if the two smallest sides are less than or equal to the largest
    # return invalid 

# test if sides are unique
# if 3 unique, then scalene
# if 2 unique, then isosceles
# otherwise equilateral


def triangle (side_1, side_2, side_3)
  sides = [side_1, side_2, side_3].sort
  return :invalid  if sides.include?(0) || (sides[0] + sides[1] ) <= sides[2]
  
  if sides.uniq.size == 3 then :scalene
  elsif sides.uniq.size == 2 then :isosceles
  else :equilateral
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
