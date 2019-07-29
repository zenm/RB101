
# Write a method that takes a string, and then returns a hash that contains 
# 3 entries: one represents the number of characters in the string that are
# lowercase letters, one the number of characters that are uppercase letters, 
# and one the number of characters that are neither.

def letter_case_count(string)
  string.each_char do |char|
    puts /[a-z]/.match(char)
  end
end

puts letter_case_count('abCdef 123')