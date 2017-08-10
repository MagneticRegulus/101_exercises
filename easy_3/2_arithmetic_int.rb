# Write a program that prompts the user for two positive integers, and then prints
# the results of the following operations on those two numbers: addition, subtraction,
# product, quotient, remainder, and power. Do not worry about validating the input.

# I will validate that input!!!

OPERATORS = [:+, :-, :*, :/, :%, :**]

def get_integer
  loop do
    entry = gets.chomp
    if entry == entry.to_i.to_s
      break entry.to_i
    else
      puts "==> Invalid entry."
    end
  end
end

numbers = []

loop do
  2.times do |num|
    puts "==> Enter your ##{num + 1} number:" # not a fan of the wording
    choice = get_integer
    numbers << choice
  end
  break if numbers[1] != 0
  numbers = []
  puts "==> #2 cannot be 0."
end

OPERATORS.each do |op|
  puts "==> #{numbers[0]} #{op} #{numbers[1]} = #{numbers.reduce(op)}"
end
