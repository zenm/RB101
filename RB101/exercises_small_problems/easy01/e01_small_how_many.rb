vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  uniques = Hash.new
  arr.each do |word|
    if uniques[word]
      uniques[word] += 1
    else
      uniques[word] = 1
    end
  end
  uniques.each{ |word, count| puts "#{word} => #{count}" }
end

count_occurrences(vehicles)
