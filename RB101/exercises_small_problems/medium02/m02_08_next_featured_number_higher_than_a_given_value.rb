# input: number
# output: next featured number
# increment from number to see if 
# number is odd number and number % 7 == 0 

def featured(number)
  return "No featured number" if number > 9_876_543_210
  next_featured_number = number + 1
  loop do
    break if next_featured_number.odd? && 
    (next_featured_number % 7).zero? &&
    next_featured_number.to_s.chars.size == next_featured_number.to_s.chars.uniq.size
    next_featured_number += 1
  end

  next_featured_number
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) #== 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
