
# Spin Me Around In Circles

# You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

# Notes:
# input - string
# input - string reversed
# the answer to this question is that this mutates the caller. It is the same object now reversed.
# I got fooled in that word.reverse! mutates objects, but the return value of the method is different than the string passed as an argument
# split returns a new array, which is different than str

# So we have mutated the array that we got by splitting the string, but, when we join this array back into a string, a completely new string is returned.

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"
