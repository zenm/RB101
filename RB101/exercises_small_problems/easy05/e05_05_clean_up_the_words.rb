# Clean up the words
# Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).


# find a way to use regex to find a non word character
# swap out substrings

#Examples:

# cleanup("---what's my +*& line?") == ' what s my line '

def cleanup(str)
  str.gsub(/\W+/, ' ')
end

puts cleanup("---what's my +*& line?")  == ' what s my line '
