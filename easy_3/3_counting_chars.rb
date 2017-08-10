# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a character.

puts "==> Enter a word or words:"
input = gets.chomp

puts "==> There are #{input.split.join.length} characters in '#{input}'."
