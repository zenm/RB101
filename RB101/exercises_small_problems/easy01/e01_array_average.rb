# Write a method that takes one argument, an array containing integers, and returns 
the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

def average(array)
  ((array.reduce { |total, number| total += number }) / array.size).to_f
end

puts average([1, 5, 87, 45, 8, 8])