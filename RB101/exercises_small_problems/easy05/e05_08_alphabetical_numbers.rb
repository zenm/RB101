
# Write a method that takes an Array of Integers between 0 and 19, and returns
# an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven,
# twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen,
# nineteen

def alphabetic_number_sort(numbers)
  word_numbers = %w(zero one two three four five six seven eight nine ten eleven
                    twelve thirteen fourteen fifteen sixteen seventeen eighteen
                    nineteen)
  word_array = []
  numbers.each do |number|
    word_array << word_numbers[number]
  end
  sorted_numbers(word_array)
end

def sorted_numbers(word_numbers_array)
  sorted_numbers = []
  word_numbers_array.sort.each do |word_number|
    sorted_numbers << word_numbers_array.index(word_number)
  end
  sorted_numbers
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
