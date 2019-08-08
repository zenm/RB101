
# If a letter in a string, 
# repeat each twice, 
# return the string

def repeater(str)
  array_string = str.chars.map do |char|
    char * 2
  end
  array_string.join('')
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
