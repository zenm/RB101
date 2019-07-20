
# assumes we would pass a character string
# remove non-letters from the count

def clean_string(string)
  string.gsub(/\W+/, '')
end

def word_sizes(string)
  sizes_words = {}
  string.split.each do |word|
    cleaned_word = clean_string(word)
    if sizes_words.key?(cleaned_word.size)
      sizes_words[cleaned_word.size] = sizes_words[cleaned_word.size] += 1
    else
      sizes_words[cleaned_word.size] = 1
    end
  end
  sizes_words
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
