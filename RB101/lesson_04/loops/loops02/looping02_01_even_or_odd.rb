#Write a loop that prints numbers 1-5
# and whether the number is even or odd. 
# Use the code below to get started.

# input
# output: outputs '1 is odd'
# break after count is 5

count = 1

loop do
  puts count.odd? ? "#{count} is odd" : "#{count} is even"
  break if count == 5
  count += 1
end
