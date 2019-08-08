
# Write a method that takes two arguments: the first is the starting number,
# and the second is the ending number. Print out all numbers between the two numbers, except 
# if a number is divisible by 3, print "Fizz", 
# if a number is divisible by 5, print "Buzz", 
# and finally if a number is divisible by 3 and 5, print "FizzBuzz".

def fizzbuzz(start_number, end_number)
  fizzbuzz_arr = []
  (start_number..end_number).each do |elem|
    fizzbuzz_arr << case 
      when (elem % 5 == 0 && elem % 3 == 0)
        "FizzBuzz"
      when elem % 5 == 0
        "Buzz"
      when elem % 3 == 0
        "Fizz"
      else
        elem
    end
  end
  fizzbuzz_arr.join(", ")
end

print fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

