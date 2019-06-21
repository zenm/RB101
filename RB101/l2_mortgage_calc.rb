
def prompt(message)
  puts ">> #{message}"
end

def valid_number?(n)
  replaced_str = process_number(n)
  /^\d+$/ === replaced_str
end

def process_number(number_str)
  replaced_str = number_str.split(/[\, ]/).join
end

def valid_percentage?(n)
end



# ask user for loan amount
def loan_amount
  loan_amount = ''
  loop do
    prompt("How much is your loan?")
    input = gets.chomp 
    if valid_number?(input)
      loan_amount = process_number(input).to_i 
      break  
    else
      prompt("Sorry, not a valid number.")
    end
  end
  loan_amount
end

# ask user for annual percentage
def annual_percentage
  # test for valid annual percentage
  annual_percentage = nil
  loop do
    # if valid
    # if error
  end
  annual_percentage
end

# ask user for loan duration
def loan_durration
    # test for loan duration
    annual_percentage = nil
    
    loop do
      # if valid
      # if error
    end
    annual_percentage
end

def monthly_interest_rate(n)
  monthly_interest = annual_percentage(n) / 12
end


def monthly_payments_calculator
  prompt('Welcome to your mortgage calculator.')
  prompt('Be sure to ready the terms of your mortage, loan amount, and loan duration.')
end