# Write a method that takes a floating point number that represents an angle between
# 0 and 360 degrees and returns a String that represents that angle in degrees,
# minutes and seconds. You should use a degree symbol (°) to represent degrees,
# a single quote (') to represent minutes, and a double quote (") to represent
# seconds. A degree has 60 minutes, while a minute has 60 seconds.

DEG_SYM = "\xC2\xB0"
MIN_PER_DEG = 60
SEC_PER_MIN = 60
SEC_PER_DEG = MIN_PER_DEG * SEC_PER_MIN

def dms(angle)
  angle < 0 ? degree = angle.abs : degree = angle # further ex
  minutes = ((degree * MIN_PER_DEG) % MIN_PER_DEG).to_i
  seconds = ((degree * SEC_PER_DEG) % SEC_PER_MIN).to_i
  degree = degree.to_i
  degree *= -1 if angle < 0 # further ex
  %(#{degree}#{DEG_SYM}#{"%02d" % minutes}'#{"%02d" % seconds}\")
end


puts dms(30)
puts dms(76.73)
puts dms(-76.73)
puts dms(360)
puts dms(745.34)
puts dms(453.75)
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Solution version:

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(-76.73)
puts dms(745.34)
puts dms(453.75)

# Further exploration: yes mine does work outside of the range 0..360
