# Write a method that takes one argument, a positive integer, and returns a string
# of alternating 1s and 0s, always starting with 1. The length of the string should
# match the given integer.

### Notes ###

# set integer to string_length
# initialise an empty string bites
# iterate over 1 to the string_length
#   if the integer is odd, append '1' to bites
#   if not, appen '0' to bites
# evaluate bites

def stringy(string_length)
  numbers = ''
  1.upto(string_length) do |num|
    num.odd? ? numbers << '1' : numbers << '0'
  end
  numbers
end

##############################

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# => true
puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)


### Solution ###

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

# optional argument to change starting number to 0; tested in irb
def stringy(string_length, start = 1)
  start = 1 if start != 1 && start != 0
  numbers = ''
  1.upto(string_length) do |num|
    num.odd? ? numbers << start.to_s : numbers << (start - 1).abs.to_s
  end
  numbers
end
