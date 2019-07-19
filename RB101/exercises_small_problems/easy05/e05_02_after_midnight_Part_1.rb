# number of minutes before or after 0, midnight
# input is any number
# output as a string in hh:mm format

MINUTES_IN_DAY = 1440

def time_of_day(integer)
  mins_in_day = integer % MINUTES_IN_DAY
  hours, minutes = mins_in_day.divmod(60)
  hours = hours < 10 ? '0' + hours.to_s : hours
  minutes = minutes < 10 ? '0' + minutes.to_s : minutes
  "#{hours}:#{minutes}"
end

puts time_of_day(0) == '00:00'
puts time_of_day(-3) == '23:57'
puts time_of_day(35) == '00:35'
puts time_of_day(-1437) == '00:03'
puts time_of_day(3000) == '02:00'
puts time_of_day(800) == '13:20'
puts time_of_day(-4231) == '01:29'
