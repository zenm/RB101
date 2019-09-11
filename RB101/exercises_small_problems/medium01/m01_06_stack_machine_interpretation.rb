# background

# stack? 
# a list that grows and shrinks dynamically
# ie. a ruby array where you use #pop and #push to change a list of values dynamically

# stack and register?
# a programming language
  # that uses a stack of values

# register?
# the current value in a stack

# operations that require two values use the 
# register value
# the top top most value in the stack
  # use stack#pop o get this value
# perform operation
# store result in register
  
# inputs
# make a method that manipulates a stack-and-register programming language
# a string specifying operations and values

# outputs
# the stack

# I need a method that
# takes in a string
# split the string from left to right and look for keywords and values
# 
# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value

def print_register (value)
  puts value.to_s
end

def minilang (string)
  split_values = string.upcase.split
  stack = []
  register = 0
  
  split_values.each do |value|
    case value 
    when "PRINT"
      print_register(register)
    when /\d+/
      register = value.to_i
    when "PUSH"
      stack << register
    when "POP"
      register = stack.pop.to_i
    when "ADD"
      register = stack.pop + register
    when "SUB"
      register = register - stack.pop
    when "MULT"
      register = stack.pop * register
    when "DIV"
      register = register / stack.pop 
    when "MOD"
      register = register % stack.pop
    end
  end
end

# minilang ('PRINT')
# minilang ('5 PRINT')
# minilang('5 PUSH 3 MULT PRINT')
# minilang('5 PRINT PUSH 3 PRINT')
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# minilang('5 PUSH POP PRINT')
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
# minilang('6 PUSH')

