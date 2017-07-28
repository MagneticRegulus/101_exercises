# The program should prompt for a bill amount and a tip rate. The program must
# compute the tip and then display both the tip and the total amount of the bill.

def get_float
  gets.chomp.to_f
end

puts 'How much is the bill?'
bill = get_float

puts 'What is the percentage you wish to tip?'
tip_percent = get_float / 100.00

tip = bill * tip_percent
total = bill + tip

puts "The tip is $#{sprintf("%0.02f", tip)}"
puts "The total is $#{sprintf("%0.02f", total)}"
