
# https://launchschool.com/lessons/85376b6d/assignments/fd13de08

# Practice Problem 1

# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# mine: 
# => [1, 2, 3]
# a string is truthy, so the block will return true for each number

# Practice Problem 2

# mine: 
# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# mine: 
# Will give you a number if you pass it an argument. Count returns where the truthy if passing count a block.

# Practice Problem 3

# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# mine:
# reject


# Practice Problem 4

# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# mine: 
#=> { 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' }

# Practice Problem 5

# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# [:a , 'ant']

# Practice Problem 6

# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# mine
# 'caterpillar'.size or 
# => 11

# Practice Problem 7

# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# mine:
# outputs: [1, 2, 3]
# returns: =>true
# determined by the true of 1.odd?

# theirs:
# returns the first element where it's true
# any stops evaluating once #any? condition is met

# Practice Problem 8

# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# mine:
# https://ruby-doc.org/core-2.6.3/Array.html#method-i-take
# takes the first n elements
# take is not destructive
# you can see it in the docs, or you check it out in irb

#theirs: 

# Practice Problem 9

# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

#mine:
# NoMethodError:?

#theirs:



# Practice Problem 10

# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# mine:
# this should output 1
# return value will be an array #=> [nil, 2, 3]

# theirs:
# I needed to take a closer look at the 
# => conditional statement