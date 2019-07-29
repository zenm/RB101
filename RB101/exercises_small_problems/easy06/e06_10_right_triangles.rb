
# Write a method that takes a positive integer, n, as an argument,
# and displays a right triangle whose sides each have n stars.
# The hypotenuse of the triangle (the diagonal side in the images below)
# should have one end at the lower-left of the triangle,
# and the other end at the upper-right.

# Notes
# loop through and
# rows
# concatenate spaces and stars
# decrement the number of spaces
# increment the number of stars

def triangle(number)
  spaces_count = number
  stars_count = 0
  loop do
    break if stars_count > number
    puts ' ' * spaces_count + '*' * stars_count
    spaces_count -= 1
    stars_count += 1
  end
end

triangle(5)
triangle(9)
