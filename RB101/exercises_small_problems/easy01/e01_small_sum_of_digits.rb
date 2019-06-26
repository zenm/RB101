def sum(number)
  total = 0
  number.to_s.split('').each { |el| total += el.to_i }
  total
end

p sum(123_123)
