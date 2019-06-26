print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
percentage = gets.chomp.to_f / 100
total = bill += (bill * percentage)
tip = bill * percentage

puts "The tip is #{'%.2f' % tip}"
puts "The total is #{'%.2f' % total}"
