Kernel.puts("Enter the length of the room in meters:")
length = Kernel.gets.chomp.to_f

Kernel.puts("Enter the width of the room in meters:")
width = Kernel.gets.chomp.to_f

square_meters = length * width
square_feet = square_meters * 10.7639

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."
