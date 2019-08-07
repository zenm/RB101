
# Mad libs are a simple game where you create a 
# story template with blanks for words. You, or another player, 
# then construct a list of words and place them into the story, 
# creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts 
# for a noun, a verb, an adverb, and an adjective 
# and injects those into a story that you create.


# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

# Notes prompt user for 
# inputs: noun, verb, adjective, adverb
# output: a line that includes all the prompted words.

def madlib_inputs
   print "Enter a noun: " 
   noun = gets.chomp
   print "Enter a verb: " 
   verb = gets.chomp
   print "Enter an adjective: " 
   adjective = gets.chomp
   print "Enter an adverb: " 
   adverb = gets.chomp
   madlib_line(noun, verb, adjective, adverb)
end

def madlib_line(noun, verb, adjective, adverb)
  sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
  sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
  sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."
  [sentence_1, sentence_2, sentence_3].sample
end

puts madlib_inputs
