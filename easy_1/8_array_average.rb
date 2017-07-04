# Write a method that takes one argument, an array containing integers, and returns
# the average of all numbers in the array. The array will never be empty and the
# numbers will always be positive integers.

### Notes ###

# initialise sum and set equal to zero
# interate over each element of array
#   add element to sum
# divide sum by the length of array

def average(numbers)
  sum = 0
  numbers.each { |x| sum += x }
  sum / numbers.length
end

# tests
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
# => true

# Solution
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

# Can be done on one line and can change the result to be a float:
def average(array)
    array.inject(:+)/array.count.to_f
end
