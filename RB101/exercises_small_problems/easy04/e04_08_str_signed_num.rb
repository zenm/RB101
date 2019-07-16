HASH_NUMBERS = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9
}

def string_to_signed_integer(string_number)
  array_str_numbers = string_number.split('')
  if string_number.start_with?('-') || string_number.start_with?('+')
    number_sign = array_str_numbers.shift
  end

  array_numbers = array_str_numbers.map { |n| HASH_NUMBERS[n] }
  int = array_numbers.reduce { |total, num| total * 10 + num }
  return int * -1 if number_sign == '-'
  return int
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
