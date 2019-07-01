def century(number)
  century_num = 0
  if number % 100 == 0
    century_num = number / 100
  else
    century_num = number / 100 + 1
  end
  century_num.to_s + century_ordinal(century_num)
end

def century_ordinal(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end



# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(1052) == '11th'
# p century(1127) == '12th'
