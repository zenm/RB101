
# Two methods
# Input is string in 24 hour format
  # find number of minutes per hour
  # find number of minutes
# but you return the number of minutes before or after midnight
# you'll return a number in the range of 0..1439

MINS_IN_HOUR = 60
HOURS_IN_DAY = 24
NUMBER_MINUTES_IN_DAY = MINS_IN_HOUR * HOURS_IN_DAY

def hours_mins(str)
  str.split(/\:/)
end

def after_midnight(time_str)
  hours, mins = hours_mins(time_str)
  time_in_mins = hours.to_i * MINS_IN_HOUR + mins.to_i
  time_in_mins % NUMBER_MINUTES_IN_DAY
end

def before_midnight(time_str)
  hours, mins = hours_mins(time_str)
  time_in_mins = hours.to_i * MINS_IN_HOUR + mins.to_i
  (NUMBER_MINUTES_IN_DAY - time_in_mins) % NUMBER_MINUTES_IN_DAY
end

puts after_midnight('00:00') # 0
puts before_midnight('00:00') # 0
puts after_midnight('12:34') # 754
puts before_midnight('12:34') # 686
puts after_midnight('24:00') # 0
puts before_midnight('24:00') # 0
