#Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more letter words reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

#Examples:

#puts reverse_words('Professional')          # => lanoisseforP
#puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
#puts reverse_words('Launch School')         # => hcnuaL loohcS

def reverse_words(sentence)
  reversed_words = sentence.split.map do | word |
    word.size > 4 ? word.reverse : word
  end
  reversed_words.join(' ')
end

puts reverse_words('Professional suit')
puts reverse_words('Walk around the block')

# author's solution
# def reverse_words(string)
#   words = []
#   sring.split.each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end

#   words.join(' ')
# end