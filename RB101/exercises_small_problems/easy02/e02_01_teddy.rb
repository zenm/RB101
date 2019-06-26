def teddys_age
  rand_num = Random.new
  rand_num.rand(20..200)
end

puts "Teddy is #{teddys_age} years old!"
