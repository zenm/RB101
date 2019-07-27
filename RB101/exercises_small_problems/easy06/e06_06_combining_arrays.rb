
# Combining Arrays

# Write a method that takes two Arrays as arguments, 
# and returns an Array that contains all of the values from the argument Arrays. 
# There should be no duplication of values in the returned Array, 
#even if there are duplicates in the original Arrays.

# Notes
# input: two arrays
# output: a deduped, array of both

def merge(array_1, array_2)
  (array_1 + array_2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]