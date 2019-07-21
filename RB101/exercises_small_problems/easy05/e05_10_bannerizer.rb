
# Bannerizer

# Write a method that will take a short line of text, and print it within a box.

#Example:

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# multiply string the length of the string 
# times?
# 

def print_in_box(string)
  length = string.length
  upper_lower_box = ""
  top_bottom = "+-" + multi_char(length, "-") + "-+"
  padding = "| " + multi_char(length, " ") + " |"
  line =  "| " + string + " |"
  puts top_bottom, padding, line, padding, top_bottom
end

def multi_char(number, char)
  line_dashes = ""
  number.times { |n| line_dashes << char }
  line_dashes
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')