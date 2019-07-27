
# Write a method that takes an Array as an argument,
# and reverses its elements in place; that is, 
# mutates the Array passed into this method. 
# The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

test_array = %w(hey "it's" a party)

def reverse!(array)
  counter = array.length
  temp_array = [] 
  loop do
    break if counter <= 0
    temp_array << array.pop
    counter -= 1
  end
  (array << temp_array).flatten!
end

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
puts list == ["c", "d", "e", "b", "a"]