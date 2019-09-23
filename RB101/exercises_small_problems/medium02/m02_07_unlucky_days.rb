# input
  # when you give a year
# output
  # then you see the  number of days that are friday and have a date of 13
# algorithm
# for each month, collect the dates of the 13ths for the year.
# then test and select for  Friday
require 'date'
def friday_13th(year)
  dates_13th = []
  (1..12).each do |month| 
    dates_13th << Time.new(year, month, 13)
  end
  
  dates_13th.select{ |date| date.friday? }.size
end

# examlpes

p friday_13th(2015) #== 3
p friday_13th(1986) #== 1
p friday_13th(2019) #== 2
