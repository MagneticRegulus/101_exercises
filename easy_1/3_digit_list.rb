# Write a method that takes one argument, a positive integer, and returns a list
# of the digits in the number.

### Notes ###

# Take argument and change to string
# Split the argument by character into a new array
# map the array of strings to an array of integers
# Check if argument is negative ?

def digit_list(num)
  num = num.to_s
  num.split(//).map { |e| e.to_i  }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
p digit_list(12345)
puts digit_list(7) == [7]                     # => true
p digit_list(7)
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
p digit_list(375290)
puts digit_list(444) == [4, 4, 4]             # => true
p digit_list(444)

# Idiomatic Ruby solution - similar to my answer:

def digit_list_again(num)
  num.to_s.chars.map(&:to_i)
end

# something.map { |char| char.to_i } same as something.map(&:to_i)
