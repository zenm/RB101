POSITION = ['1st', '2nd', '3rd', '4th', '5th', 'last']
numbers = []

def prompt(string)
  Kernel.puts "==> #{string}"
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


p numbers