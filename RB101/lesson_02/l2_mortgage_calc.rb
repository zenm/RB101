
def prompt(message)
  puts ">> #{message}"
end

def valid_number?(n)
  /^\d+$/ =~ match(process_number(n))
end

def process_number(number_str)
  number_str.split(/[\, ]/).join
end

def valid_float?(str)
  /^\d*\.*\d*%*$/ === str
end

def process_float(str)
  if str.end_with?("%") { return str[0..(str.size - 2)].to_f } 
  str.to_f
end

def loan_amount
  loan_amount = ''
  loop do
    prompt("How much is your loan?")
    input = gets.chomp
    if valid_number?(input)
      loan_amount = process_number(input).to_i
      break
    else
      prompt("Sorry, not a valid number for a loan amount.")
    end
  end
  loan_amount
end

def annual_percentage
  annual_percentage = nil
  loop do
    prompt("What annual percentage rate did you agree to?")
    prompt("for example:  3, 4.5, 6.0%")
    input = gets.chomp
    if valid_float?(input)
      annual_percentage = process_float(input).to_f
      break
    else
      prompt("Sorry, not a valid annual percentage.")
    end
  end
  annual_percentage / 100
end

def loan_duration
  loan_duration = ""
  loop do
    prompt("For how many years is your loan?")
    input = gets.chomp
    if valid_float?(input)
      loan_duration = process_float(input).to_f
      break
    else
      prompt("Sorry, not a valid number of time.")
    end
  end
  loan_duration
end

def monthly_interest_rate(float_percent)
  float_percent / 12.0
end

def welcome
  prompt('Welcome to your mortgage calculator.')
  prompt('Be sure to ready the terms of your mortage, including:')
  prompt('loan amount, loan duration, and annual percentage rate.')
end

def goodbye
  prompt('Check out my other work at my_other_work.com')
  prompt('Thank you and goodbye')
end

def monthly_payments
  welcome()
  loop do
    amount = loan_amount()
    rate = monthly_interest_rate(annual_percentage)
    duration = loan_duration() * 12
    monthly_payment =
      amount * (rate / (1 - (1 + rate)**-duration))
    prompt("You'll pay $#{format('%02.2f', monthly_payment)} per month.")
    
    prompt("Another calculation?")
    reply = gets.chomp
    break unless(reply.downcase.start_with?("y"))
    goodbye()
  end
end

monthly_payments()
