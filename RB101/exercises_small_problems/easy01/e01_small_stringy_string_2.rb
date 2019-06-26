# Modify stringy so it takes an optional argument that defaults to 1. If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

def stringy(number)
  number_string = ''
  (1..number).each do |number| 
    if number % 2 == 1 
      number_string += "1"
    else
      number_string += "0"
    end
  end

  number_string
end

# puts stringy(7)
# puts stringy(1)
# puts stringy(2)

def authors_stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  number.join
end
