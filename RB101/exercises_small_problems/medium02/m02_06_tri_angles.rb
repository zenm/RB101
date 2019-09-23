# input: 3 angles of a triangle
# output: the type of triangle as a symbol

# algorithm:
def triangle(angle_1, angle_2, angle_3)
  angles = [angle_1, angle_2, angle_3]
  return :invalid if angles.include?(0) || angles.sum != 180
  
  if angles.include?(90) then :right
    elsif angles.select {|angle| angle > 90}.size > 0 then :obtuse
    else :acute
  end

end

# examples
puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
