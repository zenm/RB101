
# Write a method that takes an Array as an argument, 
# and returns two Arrays (as a pair of nested Arrays) 
# that contain the first half and second half of the original Array, respectively. 
# If the original array contains an odd number of elements, 
# the middle element should be placed in the first half Array.

def halvsies(arr)
  p arr.size
  split_arr = []
  if arr.size.odd?
    split_num = (arr.size / 2) + 1
    arr.each_slice(split_num) { |a| split_arr <<  a }
  else
    split_num = arr.size / 2
    arr.each_slice(split_num) { |a| split_arr << a }
  end
  split_arr
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
# halvsies([5]) #== [[5], []]
# halvsies([]) #== [[], []]