# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# input: string with spaces
# output: string that...
# switches the first and last characters in a string
# for each word, switch up the first and last characters

# Examples:

def switch_first_last_chars (word)
  case word.size
    when 1
      word
    when 2
      word = word[1] + word[0]
    else
      word = word[-1] + word[1..-2] + word[0]
  end
end

def swap (words)
  words_array = words.split.map { |word| switch_first_last_chars(word) }
  words_array.join(" ")
end



puts swap('Oh what a wonderful day it is') #=> 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') #=> 'ebcdA'
puts swap('a') #=> 'a'