def sum_or_product(decision, array_numbers)
  if decision == 's'
    array_numbers.reduce { |total, number| total += number }
  else
    array_numbers.reduce { |total, number| total *= number }
  end
end

Kernel.puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i.digits

Kernel.puts ">> Enter 's' to compute the sum, 'p' to compute the product."
s_p = gets.chomp

puts sum_or_product(s_p, number)
