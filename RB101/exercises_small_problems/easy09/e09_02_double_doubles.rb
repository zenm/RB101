
# Double Doubles

# A double number is a number with an even number of digits 
# whose left-side digits are exactly the same as its right-side digits. 
# For example, 44, 3333, 103103, 7676 are all double numbers. 
# 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, 
# unless the argument is a double number; 
# double numbers should be returned as-is.

# Notes:
# Input: number
# output:return twice the number
# if a double double, then return number as is 

# find half way of the number
# check to see if both halves equal each other.

def is_dobule_double?(str)
  str.size.even? && 
  str[0, str.size / 2] == str[(str.size / 2)..-1]
  
end

def twice(num)
  is_dobule_double?(num.to_s) ? num : num * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10