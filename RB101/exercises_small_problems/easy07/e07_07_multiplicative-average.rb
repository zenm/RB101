
# Write a method that takes an Array of integers as input,
# multiplies all the numbers together,
# divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places.
# Assume the array is non-empty.

# Notes: 
# multiply each number of the arrays, and divide by number of elements 
# show 3 decimal places

def show_multiplicative_average(array)
  product = array.reduce { |acc, elem| acc.to_f * elem }
  '%.3f' % (product / array.size)
end

puts show_multiplicative_average([3, 5])
#The result is 7.500

puts show_multiplicative_average([6])
#The result is 6.000

puts show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667


# pi = 355.0/113.0
# '%1.5f' % pi # => "3.14159"