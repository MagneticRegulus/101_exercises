# Write a method that takes one argument, a positive integer, and returns the sum
# of its digits.

# For a challenge, try writing this without any basic looping constructs (while,
# until, loop, and each).

### Notes ###
# initialise a total variable
# turn the integer into a string
# split the string into an array which holds the individual characters
# delete all non-integer characters
# map (mutate) all remaining elements to integers
# do array length times
# total += elements
# return total

def sum(number)
  num_sum = 0
  num_ary = number.to_s.split(//)
  num_ary.delete_if { |e| e != e.to_i.to_s } # uneeded. '_' is 0 not nil
  num_ary.map! { |i| i.to_i }
  num_ary.length.times { num_sum += num_ary.pop}
  num_sum
end

# Examples:

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
puts "The sum of 317 is #{sum(317)}."
puts "The sum of 54 is #{sum(54)}."
puts "The sum of 38,495 is #{sum(38_495)}."
puts "The sum of 1,378,076 is #{sum(1_378_076)}."

# solution version:

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
puts "The sum of 317 is #{sum(317)}."
puts "The sum of 54 is #{sum(54)}."
puts "The sum of 38,495 is #{sum(38_495)}."
puts "The sum of 1,378,076 is #{sum(1_378_076)}."
