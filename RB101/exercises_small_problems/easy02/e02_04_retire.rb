require 'time'

year = Time.new.year

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retire_age = gets.chomp.to_i

puts "It's #{year}. You will retire in #{year + retire_age - age}"
puts "You have only #{retire_age - age} years of work to go!"