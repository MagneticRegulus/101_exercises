# Print the even numbers from 1 to 99, inclusive. All numbers should be printed
# on separate lines.

(1..99).each { |num| puts num if num.even? }

puts '=====OR====='

1.upto(99) { |num| puts num if num.even? }

puts '=====OR====='

# I don't like the below, but it should fix printing 0
98.times { |num| puts num + 2 if num.even? }
