
def bubble_sort!(array)
  i = 0
  array_size = array.size
  loop do    
    if array[i+1].nil?
      i += 1
    elsif (array[i] <=> array[i + 1]) > 0
      array[i + 1], array[i] = array[i], array[i + 1]
      i = 0
    else
      i += 1
    end

    break if i == array.size
  end
  array
end

# examples
array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)