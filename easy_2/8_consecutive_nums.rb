# Write a program that asks the user to enter an integer greater than 0, then asks
# if the user wants to determine the sum or product of all numbers between 1 and
# the entered integer.

def sum(n)
  if n <= 0
    0
  else
    n + sum(n-1)
  end
end

def product(n)
  if n <= 0
    1
  else
    n * product(n-1)
  end
end

def integer?(string)
  string == string.to_i.to_s
end

number = ''

loop do
  puts 'Enter an integer greater than 0.'
  number = gets.chomp

  if integer?(number) && number.to_i > 0
    number = number.to_i
    break
  else
    puts 'Invalid integer.'
  end
end

loop do
  puts 'Choose: 1) to compute the sum; 2) to compute the product.'
  compute = gets.chomp

  if compute == '1'
    puts "The sum of the numbers from 1 to #{number} is #{sum(number)}"
    break
  elsif compute == '2'
    puts "The product of the numbers from 1 to #{number} is #{product(number)}"
    break
  else
    puts 'Invalid choice.'
  end
end
