
# Write a method that takes an Array of numbers and then
# returns the sum of the sums of each leading subsequence for that Array.

# You may assume that the Array always contains at least one number.

# Notes
# input: array of numbers
# output sum of sums, of subsequent numbers

def sum_of_sums(numbers)
  up_to_index = 0
  sum = 0
  loop do
    break unless numbers[up_to_index]
    inner_loop = 0
    loop do
      sum += numbers[inner_loop]
      inner_loop += 1
      break if inner_loop > up_to_index
    end
    up_to_index += 1
  end
  sum
end

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
