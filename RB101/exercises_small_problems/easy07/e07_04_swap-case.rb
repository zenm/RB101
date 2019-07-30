
# Write a method that takes a string as an argument
# and returns a new string in which
# every uppercase letter is replaced by its lowercase version,
# and every lowercase letter by its uppercase version.
# All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# Notes:
# input: a new string
# returns: swapped case for each letter in a string
# constraints: can't use #swapcase

def swapcase(string)
  swapped_string = ''
  string.each_char do |c|
    if (97..122).cover?(c.ord)
      swapped_string += c.upcase
    else
      swapped_string += c.downcase
    end
  end
end

puts swapcase('CamelCase') #== 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'
