# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5 numbers.

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

list = []

5.times do |num|
  puts "==> Enter your # #{num + 1} number:"
  number = get_integer
  list << number
end

puts "==> Enter the number you would like to search for:"
search_num = get_integer

puts "==> The number #{search_num} " +
     "#{list.include?(search_num) ? 'appears' : 'does not appear'} in #{list}."
