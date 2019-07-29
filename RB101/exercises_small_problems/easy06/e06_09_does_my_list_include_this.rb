
# Write a method named include? that takes an Array and a search value as arguments. 
# This method should return true if the search value is in the array, false if it is not. 
# You may not use the Array#include? method in your solution.

def include?(array_to_check, value)
  i = 0
  in_array = false
  while i < array_to_check.length
    in_array = true if array_to_check[i] == value
    i += 1
  end
  in_array
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false