# Write a program that will ask for user's name. The program will then greet the
# user. If the user writes "name!" then the computer yells back to the user.

puts 'What is your name?'
name = gets.chomp

if name.end_with?('!')
  puts "HELLO, #{name.chop.upcase}. WHY ARE WE YELLING?"
elsif name == name.upcase
  puts "HELLO, #{name}. WHY ARE WE YELLING?"
else
  puts "Hello, #{name}."
end
