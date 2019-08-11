
# Get The Middle Character

# Write a method that takes a non-empty string argument,
# and returns the middle character or characters of the argument.
# If the argument has an odd length, you should return exactly one character.
# If the argument has an even length, you should return exactly two characters.

# Assumes: argument is non-empty
# Input: a string
# Output: retruns the middle character in the string
# If odd, then middle char
# If even, then middle two characters

# Odd or even?
# find the middle of a string
# if even, divide string by two, slice from that position 2 charcters
# if odd, divide string by two, get index from that position.

def center_of(string)
  if string.size.odd?
    return string[string.size / 2]
  end
  string.slice(string.size / 2 - 1, 2)
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'