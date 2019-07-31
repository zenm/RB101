
# Write a method that takes two Array arguments in which
# each Array contains a list of numbers,
# and returns a new Array that contains the product
# of every pair of numbers that can be formed between the elements of the two
#  Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# input: 2 arrays
# iterate over each element of array and
# for each product
# add to a new array and sort that array in asending order.
# output: sorted array

def multiply_all_pairs(a1, a2)
  product_array = []
  a1.each do |a1_elem|
    a2.each do |a2_elem|
      product_array << a1_elem * a2_elem
    end
  end
  product_array.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
