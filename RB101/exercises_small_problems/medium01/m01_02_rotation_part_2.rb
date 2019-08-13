
# Write a method that can rotate the last n digits of a number.

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.


def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(target_num, rotate_num)
  negative_index = rotate_num * -1
  array_to_rotate = target_num.to_s.split('')[negative_index..-1]
  first_str = target_num.to_s.split('')[0...negative_index].join('')
  rotate_str = rotate_array(array_to_rotate).join('')
  first_str.concat(rotate_str).to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917

