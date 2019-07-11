def push_rutabaga(an_array_param)
  an_array_param << "rutabaga"
end

def concatenate_rutabaga(a_string_param)
  a_string_param += "rutabaga"
end

my_string = concatenate_rutabaga("pumpkins")
my_array = push_rutabaga(["pumpkins"])

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"