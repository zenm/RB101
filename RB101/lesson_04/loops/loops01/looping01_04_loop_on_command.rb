# Modify the code below so the loop stops iterating when the user inputs 'yes'.

# input: 'yes'
# output: keeps outputting the string until you click 'yes'

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts 'Answer yes or no.'
end
