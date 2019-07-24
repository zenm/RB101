# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that 
# the first 2 numbers are 1 by definition, and each subsequent number is the sum of the 
# two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow 
# at an incredibly rapid rate. For example, the 100th Fibonacci number is 
# 354,224,848,179,261,915,075 -- that's enormous, especially considering that it 
# takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

# You may assume that the argument is always greater than or equal to 2.

# My notes: 
# fibonacci by number of digits
# break once digits equal the number passed as an argument
# input is a number, which represent the digits
# output is the fibonacci number

def find_fibonacci_index_by_length (number)
  fib_num_1 = 1
  fib_num_2 = 1
  final_fib_num = 0
  fib_counter = 3 # counter starts at 3
  loop do
    final_fib_num = fib_num_1 + fib_num_2
    break if number_digits(final_fib_num) == number
    fib_num_1  = fib_num_2
    fib_num_2  = final_fib_num
    fib_counter += 1
  end
  fib_counter
end

def number_digits(number)
  digit_counter = 0
  loop do
    number = number / 10
    digit_counter += 1
    break if number.zero?
  end
  puts digit_counter
  digit_counter
end

# puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# puts find_fibonacci_index_by_length(10) == 45
# puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
# puts find_fibonacci_index_by_length(10000) == 47847
