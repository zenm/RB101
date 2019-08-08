

#All Substrings

# Write a method that returns a list of all substrings of a string. The returned list should be 
# ordered by where in the string the substring begins. This means that all substrings that start 
# at position 0 should come first, then all substrings that start at position 1, and so on. 
# Since multiple substrings will occur at each position, the substrings at a given position 
# should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the previous exercise:

# Notes:
# input: a string
# output: nothing
# return: array of all subsequent substrings
# unshift the string
# pass to substrings
# append to array of substrings
# keep unshifting until string is gone

def substrings_at_start(string)
  array_substring = []
  index = 0
  while string[index]
    index += 1
    array_substring << string.slice(0, index)
  end
  array_substring
end

def substrings(string)
  shortend_string = string
  array_substrings = []
  index = 0 
  while shortend_string
    array_substrings += substrings_at_start(shortend_string)
    index += 1
    shortend_string = shortend_string.slice!(1..-1)
    # p shortend_string
  end
  array_substrings
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
