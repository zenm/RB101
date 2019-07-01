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

def string_to_integer(string_number)
  array_str_numbers = string_number.split('')
  array_numbers = array_str_numbers.map { |n| HASH_NUMBERS[n] }
  array_numbers.reduce { |total, num| total * 10 + num }
end

# p string_to_integer(123)
p string_to_integer('4321')
p string_to_integer('570')
