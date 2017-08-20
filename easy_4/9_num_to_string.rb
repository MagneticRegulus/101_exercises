# Write a method that takes a positive integer or zero, and converts it to a
# string representation.

DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(num)
  numbers = []
  loop do
    numbers << num % 10
    num = (num - numbers.last) / 10
    break if num == 0
  end
  numbers.reverse.map { |num| num = DIGITS[num] }.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

def integer_to_string(num)
  string = ''
  loop do
    num, remainder = num.divmod(10)
    string.prepend(DIGITS[remainder])
    break if num == 0
  end
  string
end

puts '-----'
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
