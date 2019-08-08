
# Write a method that takes a string, 
# and returns a new string in which every consonant character is doubled. 
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

def double_consonants(str)
  result = ""
  str.each_char do |char|
    if /[A-Za-z]/.match(char) && /[^aeiou]/.match(char)
      result << char << char
    else
      result << char
    end
  end
  result
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
