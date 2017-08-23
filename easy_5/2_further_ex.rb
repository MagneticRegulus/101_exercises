# How would you approach this problem if you were allowed to use ruby's Date and
# Time classes? Suppose you also needed to consider the day of week? (Assume that
# delta_minutes is the number of minutes before or after midnight between Saturday
# and Sunday; in such a method, a delta_minutes value of -4231 would need to produce
# a return value of Thursday 01:29.)

# Initialise a new Time object at midnight on a Sunday (what Sunday? for now 20th August 2017)
# Initialise an array of weekdays (as per their index which is defined as `Time#wday`)
# Initialise constant, seconds per minute
# Define method
## convert minutes to seconds
## take the Sunday date + seconds (negative or otherwise) and save to variable
## return string using interpolation

WEEKDAYS = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)
SUN_MIDNIGHT = Time.new(2017, 8, 20) # most recently past Sunday
SEC_PER_MIN = 60

def time_of_day(minutes_from_midnight)
  time = SUN_MIDNIGHT + (minutes_from_midnight * SEC_PER_MIN)
  "#{WEEKDAYS[time.wday]} #{'%02d' % time.hour}:#{'%02d' % time.min}"
end


p time_of_day(0) == "Sunday 00:00"
p time_of_day(-3) == "Saturday 23:57"
p time_of_day(35) == "Sunday 00:35"
p time_of_day(-1437) == "Saturday 00:03"
p time_of_day(3000) == "Tuesday 02:00"
p time_of_day(800) == "Sunday 13:20"
p time_of_day(-4231) == "Thursday 01:29"
