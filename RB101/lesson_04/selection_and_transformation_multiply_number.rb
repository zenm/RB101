def multiply_numbers(numbers, multiplier)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    multiplied_numbers << current_number * multiplier

    counter += 1
  end

  multiplied_numbers
end

p multiply_numbers([1,2,3,4], 2)
p multiply_numbers([1,2,3,4], 3)
