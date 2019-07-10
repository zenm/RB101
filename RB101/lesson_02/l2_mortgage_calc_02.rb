def prompt(message)
  puts ">> #{message}"
end

prompt "You're using the mortgage calculator"

amount = ''
loop do
  prompt "For how much was the loan?"
  reply = gets.chomp
  if reply.empty? || reply.to_i < 0
    prompt "Please enter the loan amount."
  else
    amount = reply
    break
  end
end

apr = ''
loop do
  prompt "What annual percent will you pay Ex. 3, 4.0, 4.5."
  reply = gets.chomp
  if reply.empty? || reply.to_f < 0
    prompt "Please enter the apr."
  else
    apr = reply
    break
  end
end

years = ''
loop do
  prompt "For how many years is the loan?"
  reply = gets.chomp
  if reply.empty? || reply.to_f < 0
    prompt "Please enter the loan in years."
  else
    years = reply
    break
  end
end

monthly_rate = apr.to_f / 100 / 12
months = years.to_f * 12

monthly_payment = amount.to_i *
                  (monthly_rate / (1 - (1 + monthly_rate)**-months))

prompt("Your monthly mortgage payment: $#{format('%02.2f', monthly_payment)}")
