
def sum_square_difference(number)
  sum_squared = (1..number).to_a.reduce{ |t, n| t += n } ** 2
  squared_number_sum = (1..number).to_a.map { |n| n**2 }.sum
  sum_squared - squared_number_sum
end

# examples
puts sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150