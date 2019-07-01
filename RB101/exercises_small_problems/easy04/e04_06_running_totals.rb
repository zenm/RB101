def running_total array
  total = 0
  index = 0
  cumulative_array = []
  loop do
    break unless array[index]
    cumulative_array << total += array[index]
    index += 1
  end
  cumulative_array
end


p running_total([])
#