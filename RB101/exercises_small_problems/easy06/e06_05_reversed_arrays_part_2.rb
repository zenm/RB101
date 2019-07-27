
# Write a method that takes an Array, and returns 
# a new Array with the elements of the original list 
# in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

def reverse(array)
  array.length
  reverse_index = -1
  count = 0
  new_array = []
  loop do
    break if count > array.length - 1
    new_array << array[reverse_index]
    reverse_index -= 1
    count += 1
  end
  new_array
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true