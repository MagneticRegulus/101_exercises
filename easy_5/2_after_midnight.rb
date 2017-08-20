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

def time_of_day(int)
  hour = (1440 + int) / 60
  hour = hour.abs
  until hour < 24
    hour = hour - 24
  end
  min = int
  if min > 0
    until min < 60
      min = min - 60
    end
  elsif min < 0
    until min > 0
      min = min + 60
    end
  else
    min = 0
  end
  "#{'%02d' % hour}:#{'%02d' % min}"
end

p time_of_day(0) == "00:00" # => true
p time_of_day(-3) == "23:57" # => false
p time_of_day(35) == "00:35" # => true
p time_of_day(-1437) == "00:03" # => false
p time_of_day(3000) == "02:00" # => false
p time_of_day(800) == "13:20" # => true
p time_of_day(-4231) == "01:29" # => false
