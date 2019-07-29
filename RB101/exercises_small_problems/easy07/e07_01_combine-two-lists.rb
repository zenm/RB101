
# Write a method that combines two Arrays passed in as arguments, 
# and returns a new Array that contains all elements from both Array arguments, 
# with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

def interleave (array_1, array_2)
  interleaved_array = []
  array_1.length.times do |i|
    interleaved_array << array_1[i] << array_2[i]
  end
  interleaved_array
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
