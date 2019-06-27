# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

prompt "==> Please enter word or words"
words = Kernel.gets.chomp
count_of_characters = words.split.join.length
prompt "There are #{count_of_characters} characters in \"#{words}\"."
