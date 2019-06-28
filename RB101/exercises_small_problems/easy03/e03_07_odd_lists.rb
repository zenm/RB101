def oddities(array)
  new_arr = []
  count = 0
  loop do
    unless array[count]
      break
    else
      new_arr << array.at(count)
      count += 2
    end
  end
  new_arr
end

p oddities([1, 2, 3])
p oddities([2, 3, 4, 5, 6])