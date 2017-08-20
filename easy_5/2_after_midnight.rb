# The time of day can be represented as the number of minutes before or after midnight.
# Write a method that takes a time using this minute-based format and returns the
# time of day in 24 hour format (hh:mm). Your method should work with any integer input.
# You may not use ruby's Date and Time classes.

def time_of_day(int)
  hour = int / 60
  hour = hour < 0 ? -hour : hour
  hour = hour - 24 if hour > 23
  min = int - hour * 60
  "#{'%02d' % hour}:#{'%02d' % min}"
end

p time_of_day(0) == "00:00" # => true
p time_of_day(-3) == "23:57" # => false
p time_of_day(35) == "00:35" # => true
p time_of_day(-1437) == "00:03" # => false
p time_of_day(3000) == "02:00" # => false
p time_of_day(800) == "13:20" # => true
p time_of_day(-4231) == "01:29" # => false

puts '---'

MIN_PER_HR = 60
HR_PER_DAY = 24
MIN_PER_DAY = MIN_PER_HR * HR_PER_DAY

def time_of_day(int)
  min = int % MIN_PER_DAY
  hour, min = min.divmod(MIN_PER_HR)
  "#{'%02d' % hour}:#{'%02d' % min}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
