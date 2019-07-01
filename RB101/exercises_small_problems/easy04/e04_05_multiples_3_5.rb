def multisum(num)
  (1..num).to_a.reduce(0) do |sum, n|
    n % 3 == 0 || n % 5 == 0 ? sum + n : sum
  end
end

p multisum(20) #=> 98
p multisum(5) #=> 8
p multisum(10) #=> 33
p multisum(1000) #=> 234168
