
# Modify the code below so "Hello!" is printed 5 times.

say_hello = true
iterator = 0

while say_hello
  puts 'Hello!'
  say_hello = false if iterator == 4
  iterator += 1
end