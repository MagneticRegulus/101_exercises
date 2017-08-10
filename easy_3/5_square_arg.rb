# Using the multiply method from the "Multiplying Two Numbers" problem, write a
# method that computes the square of its argument (the square is the result of
# multiplying a number by itself).

def square(num)
  num * num rescue 'NOPE'
end

def alt_square(num)
  num ** 2 rescue 'NOPE'
end

def multiply(num1, num2)
  num1 * num2 rescue 'NOPE'
end

def more_square(num)
  multiply(num, num) rescue 'NOPE'
end

def power_of(num, power)
  return 1 if power == 0
  product = num
  (power - 1).times { product = multiply(product, num) }
  product
end

p square(5) == 25
p square(5)
p alt_square(5) == 25
p alt_square(5)
p alt_square('hi')
p square('hi')
p more_square(5) == 25
p more_square(5)
p power_of(2, 3)
p power_of(5, 5)
p power_of(0, 0)
p power_of(10, 2)
