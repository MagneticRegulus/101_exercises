# Build a program that displays when the user will retire and how many years she
# has to work till retirement.

CURRENT_YEAR = Time.now.year

def get_integer
  gets.chomp.to_i
end

puts 'How old are you?'
age = get_integer

puts 'At what age would you like to retire?'
retire_age = get_integer

age_gap = retire_age - age
retire_year = CURRENT_YEAR + age_gap

puts "It's #{CURRENT_YEAR}. You will retire in #{retire_year}."
puts "Only #{retire_year - CURRENT_YEAR} years to go!"
