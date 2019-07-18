# string
# take a string
# split it to an array to find the number and
# reduce it down to its ascii_value
# String#ord

def ascii_value(string)
  ascii_array = string.split('').map(&:ord)
  ascii_array.reduce(0) { |acc, elem| acc + elem }
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('').zero?
