
# Palindromic Substrings

# Write a method that returns a list of all substrings of a string that are palindromic. 
# That is, each substring must consist of the same sequence of characters forwards as it does backwards. 
# The return value should be arranged in the same sequence 
# as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and 
# pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. 
# In addition, assume that single characters are not palindromes.

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

def palindromes(string)
  result = []
  substrings(string).each do |elem| 
    result << elem if elem.reverse == elem && elem.size > 1
  end
  result
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
