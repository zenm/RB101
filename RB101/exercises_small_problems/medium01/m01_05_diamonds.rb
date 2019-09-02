# make a diamond
# input:
# number
# output:
# an empty line, then
# lines
# equal to the number
# 1, then add two stars
# until the number
# then down two 
# until 1 star

def diamond(number)
puts ""
1.upto(number) do |line_num|
  stars = ""
  if line_num.odd?
    stars = "*" * line_num
    puts stars.center(number)  
  end
end

(number-2).downto(1) do |line_num|
  stars = ""
    if line_num.odd?
      stars = "*" * line_num
      puts stars.center(number)
    end
  end
end

diamond(9)
