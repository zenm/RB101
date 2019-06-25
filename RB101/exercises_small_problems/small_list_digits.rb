def digit_list(num)
  num.to_s.split('').map { |str_num| str_num.to_i }
end

p digit_list(1234)