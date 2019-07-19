# Letter Counter (Part 1)

# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Add to a hash
# the number of words of different sizes
# input string
# keys are the size of the word
# values are the number of words
# if a k doesn't exist, then add to the hash
  # but if it does, then increment the hash value
# output a hash


def word_sizes(string)
  sizes_words = {}
  string.split.each do | word |
    if sizes_words.has_key?(word.size) 
      sizes_words[word.size] = sizes_words[word.size] += 1
    else
      sizes_words[word.size] = 1
    end
  end
  sizes_words
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
