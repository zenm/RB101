# Practice Problem 1

# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are the positions in the array.

# mine:
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
names_position = {}
flintstones.each_with_index do | elem , index |
  names_position[elem] = index
end
p names_position

# -----
# Practice Problem 2

# Add up all of the ages from the Munster family hash:

# mine:

# mine:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_of_ages = 0
ages.each { |k, v| total_of_ages += ages[k] }
puts total_of_ages

# Practice Problem 3

# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# throw out the really old people (age 100 or older).

# mine: 
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.select { |k, v| v < 100}


# Practice Problem 4

# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# mine: 
# couldn't figure this one out.

# theirs: 
ages.values.min

# Practice Problem 5

# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

# mine:
# loop through
# test with start_with?

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
target_index = 0
flintstones.each_with_index do |item, index|
  if item.start_with?("Be")
  target_index = index
  break
  end
end
target_index


# theirs: 
flintstones.index { |name| name[0, 2] == "Be" }


# Practice Problem 6

# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, index|
  flintstones[index] = name[0, 3]
end

flintstones

# Practice Problem 7

# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# ex:

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
statement = "The Flintstones Rock"
array_statement = statement.chars.select {|c| c != " "}
statement_freq = {}
array_statement.each do |c|
  if statement_freq.has_key?(c)
    statement_freq[c] += 1
  else
    statement_freq[c] = 1
  end
end
statement_freq


# or

statement = "The Flintstones Rock"
array_statement = statement.chars.select {|c| c != " "}
array_statement.each_with_object({}) do | elem, hash |
  if hash.has_key?(elem)
    hash[elem] += 1
  else
    hash[elem] = 1
end

# theirs
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

#Practice Problem 8

# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# mine: 
# 1
# 1

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# mine:
# 1
# 4


# theirs: 
# first one...

# 1
# 3

# second one...

# 1
# 2

# To better understand what is happening here, we augment our loop with some additional "debugging" information:

# numbers = [1, 2, 3, 4]
# numbers.each_with_index do |number, index|
#   p "#{index}  #{numbers.inspect}  #{number}"
#   numbers.shift(1)
# end

# The output is:

# "0  [1, 2, 3, 4]  1"
# "1  [2, 3, 4]  3"


# Practice Problem 9

# As we have seen previously we can use some built-in string methods to change the case of a string. A notably missing method is something provided in Rails, but not in Ruby itself...titleize. This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title. For example, the string:

words = "the flintstones rock"

# would be:

words = "The Flintstones Rock"

# Write your own version of the rails titleize implementation.

words = "the flintstones rock"
words.split.map{ |word| word[0] = word[0].upcase + word[1..-1] }.join(" ")

# Practice Problem 10

# Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below

family_hash = { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

family_hash.each do |k, v| 
  if v["age"].between?(0, 17)
    family_hash[v]["age_group"] = "kid"
  elsif v["age"].between?(18, 64)
    family_hash[v]["age_group"] = "adult"
  else v["age"] >= 65
    family_hash[v]["age_group"] = "senior"
  end
end

p family_hash

# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.
# Summary

# You should hopefully have been able to manage these practice problems without too many difficulties. If you encountered any areas that you weren't too clear on, it is probably a good idea to review the relevant parts of this lesson now before moving on to the next lesson where we will be exploring some more advanced aspects of working with collections.

