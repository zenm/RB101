# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# notes

# make a hash
# input? a string
# split the string
# for each word
# if it's found in NUMBERS
# then give me the numeric equivalent
# join the string
# output? the string with substituted numbers

NUMBERS = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9',
}

def word_to_digit(target_string)
  words = target_string.split
  swapped_numbers_array = words.map do |word|
    if NUMBERS.has_key?(word.downcase)
      NUMBERS[word.downcase]
    else
      word
    end
  end
  swapped_numbers_string = swapped_numbers_array.join(" ")
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')