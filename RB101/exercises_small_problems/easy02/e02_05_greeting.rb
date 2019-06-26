print "What is your name? "
name = gets.chomp

greeting = if name.end_with?('!')
              name = name[0...name.size - 1]
              "Hello #{name}. Why are we screaming".upcase
            else
              "Hello #{name}."
            end

puts greeting
