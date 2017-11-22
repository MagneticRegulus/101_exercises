# Write a method that computes the difference between the square of the sum of
# the first n positive integers and the sum of the squares of the first n
# positive integers.

def square_sum(num)
  (1..num).to_a.reduce(:+) ** 2
end

def sum_squares(num)
  (1..num).to_a.map { |n| n ** 2 }.reduce(:+)
end

def sum_square_difference(num)
  square_sum(num) - sum_squares(num)
end

p sum_square_difference(3) == 22 # (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
