# Write a method that takes a number as an argument. If the argument is a
# positive number, return the negative of that number. If the number is 0 or
# negative, return the original number.

def negative(num)
  num <= 0 ? num : num * -1
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 # There's no such thing as -0 in ruby

# Other versions using similar syntax:

def negative(num)
  num <= 0 ? num : -num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0

def negative(num)
  num > 0 ? num * -1 : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0

def negative(num)
  num > 0 ? -num : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0

# Another alternative (from Further Exploration):

def negative(number)
  -number.abs
end
