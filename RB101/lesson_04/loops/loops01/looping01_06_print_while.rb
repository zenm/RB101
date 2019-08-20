
# Using a while loop, print 5 random numbers between 0 and 99. 
# The code below shows an example of how to begin solving this exercise.

#   numbers = []
  
#   while <condition>
#     # ...
#   end
  
#   Example output (your numbers will most likely be different):
  
#   62
#   96
#   31
#   16
#   36

# input: a list from 0 to 99
# output: 5 random numbers

numbers = []
counter = 0

while counter < 5
  numbers << rand(100)
  counter += 1
end

puts numbers
