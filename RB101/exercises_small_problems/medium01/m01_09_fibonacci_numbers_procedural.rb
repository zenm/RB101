# Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

# Rewrite your recursive fibonacci method so that it computes procedurally.

# notes
# 

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

puts fibonacci(12)
