
# Write a method that takes a string argument and returns a
# new string that contains the value of the original string
# with all consecutive duplicate characters collapsed into
# a single character. You may not use String#squeeze or String#squeeze!.

# iterate through each character
# a new string with consecutive duplicate characters collapsed
# loop through characters array
# append to new string if last character is different

def crunch(string)
  word_array = string.split('')
  crunched_word = ''
  index = 0
  loop do
    break if word_array.empty?
    break unless word_array[index]
    if word_array[index] == crunched_word[-1]
    else
      crunched_word << word_array[index]
    end
    index += 1
  end
  crunched_word
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
