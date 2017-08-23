# Write two methods that each take a time of day in 24 hour format, and return the
# number of minutes before and after midnight, respectively. Both methods should
# return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

HOURS_PER_DAY = 24
MIN_PER_HOUR = 60
MIN_PER_DAY = HOURS_PER_DAY * MIN_PER_HOUR
TIME_AT_MIDNIGHT = 0

def string_to_integer(time_of_day)
  hour = time_of_day[0, 2].to_i * MIN_PER_HOUR
  min = time_of_day[-2, 2].to_i
  hour + min
end

def after_midnight(minutes)
  minutes = string_to_integer(minutes)
  minutes = MIN_PER_DAY - minutes if minutes == MIN_PER_DAY
  minutes
end

def before_midnight(minutes)
  minutes = string_to_integer(minutes)
  minutes = MIN_PER_DAY if minutes == TIME_AT_MIDNIGHT
  MIN_PER_DAY - minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
