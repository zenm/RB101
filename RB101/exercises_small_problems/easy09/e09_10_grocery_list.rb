
# Grocery List

# Write a method which takes a grocery list (array) 
# of fruits with quantities and 
# converts it into an array of the correct number of each fruit.

def buy_fruit(groceries)
  things_to_buy = []
  groceries.each do |items|
    items[1].times { things_to_buy  << items[0] }
  end
  things_to_buy 
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]
