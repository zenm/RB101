POSITION = ['1st', '2nd', '3rd', '4th', '5th', 'last']
numbers = []

def prompt(string)
  Kernel.puts "==> #{string}"
end

def number_in_array(last_number, array)
  first_five = array[0..4]
  if first_five.include?(last_number)
    "The number #{last_number} appears in #{first_five}."
  else
    "The number #{last_number} does not appear in #{first_five}."
  end
end

loop do
prompt("Enter the #{POSITION[numbers.size]} number: ")

  loop do  
    num = gets.chomp
    unless num.to_i.to_s == num
      puts "Not a real number."
    else 
      numbers << num.to_i
      break
    end
  end

  if numbers.size == POSITION.size
    break
  end
end

last_number = numbers[-1]

puts number_in_array(last_number, numbers)
