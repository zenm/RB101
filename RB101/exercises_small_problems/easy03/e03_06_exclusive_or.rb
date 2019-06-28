
def xor?(v1, v2)
  if v1 == true && v2 == false ||
     v1 == false && v2 == true
    true
  else
    false
  end
end

puts xor?(5.even?, 4.even?)
puts xor?(5.even?, 4.odd?)
