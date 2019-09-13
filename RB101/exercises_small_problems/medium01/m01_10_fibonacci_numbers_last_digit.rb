def fibonacci(num)
  sum = 0
  first = 1
  second = 1
  3.upto(num) do |n| 
     sum = (first + second) 
     first, second = second, sum
  end
  sum
end

def fibonacci_last(num)
  fibonacci_number = fibonacci(num)
  fibonacci_number % 10
end

# puts fibonacci_last(100) #=> 5
puts fibonacci_last(100_001) #=> 1