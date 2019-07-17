DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number.zero?
  end
  result
end

def signed_integer_to_string(number)
  if number < 0
    number *= -1
    integer_to_string(number).prepend('-')
  elsif number.zero?
    integer_to_string(number)
  else
    integer_to_string(number).prepend('+')
  end
end

p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)