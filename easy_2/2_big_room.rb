# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Solution untilised a constant which I have updated here.
SQFEET_PER_SQMETER = 10.7639
SQIN_PER_SQFOOT = 144
SQCM_PER_SQFOOT = 929.03

puts 'Enter the length of the room in meters:'
length = gets.chomp.to_f
puts 'Enter the width of the room in meters:'
width = gets.chomp.to_f
area = length * width
feet_area = area * SQFEET_PER_SQMETER
puts "The area of the room is #{area.round(2)} square meters " +
     "(#{feet_area.round(2)} square feet)."

# Furth exploration
# Modify this program to ask for the input measurements in feet, and display the
# results in square feet, square inches, and square centimeters.

puts 'Enter the length of the room in feet:'
length = gets.chomp.to_f
puts 'Enter the width of the room in feet:'
width = gets.chomp.to_f
area_feet = length * width
area_in = area_feet * SQIN_PER_SQFOOT
area_cm = area_feet * SQCM_PER_SQFOOT
puts "The area of the room is #{area_feet.round(2)} square feet " +
     "(#{area_in.round(2)} square inches or " +
     "#{area_cm.round(2)} square centimeters)."
