# How would these methods change if you were allowed to use the Date and Time classes?

MIDNIGHT = Time.new(Time.now.year)
MIN_PER_HOUR = 60
SEC_PER_MIN = 60

def string_to_integer(time_of_day)
  hour = time_of_day[0, 2].to_i * MIN_PER_HOUR
  min = time_of_day[-2, 2].to_i
  hour + min
end

def after_midnight(minutes)
  time = MIDNIGHT + (string_to_integer(minutes) * SEC_PER_MIN)
  (time.hour * MIN_PER_HOUR) + time.min
end

def before_midnight(minutes)
  time = MIDNIGHT - (string_to_integer(minutes) * SEC_PER_MIN)
  (time.hour * MIN_PER_HOUR) + time.min
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

# Not sure moving on for now
