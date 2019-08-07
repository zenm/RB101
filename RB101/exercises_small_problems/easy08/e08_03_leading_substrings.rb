
# Write a method that returns a list of all substrings 
# of a string that start at the beginning of the original string. 
# The return value should be arranged in order from 
# shortest to longest substring.

# notes:
# input: string
# outputs: list of substrings starting from the start
def substrings_at_start(string)
  array_substring = []
  index = 0
  while string[index]
    index += 1
    array_substring << string.slice(0, index)
  end
  array_substring
end

p substrings_at_start('abc') #== ['a', 'ab', 'abc']
p substrings_at_start('a') #== ['a']
p substrings_at_start('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
