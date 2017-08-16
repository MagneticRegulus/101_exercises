# Write a method that returns true if its integer argument is palindromic, false
# otherwise. A palindromic number reads the same forwards and backwards.

def palindrome?(string_or_array)
  string_or_array == string_or_array.reverse
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?(00300) # doesn't work as is

def palindromic_number?(number, zeros=0)
  number = "#{'0' * zeros}%o" % number if zeros > 0
  palindrome?(number.to_s)
end

puts "---"
p palindromic_number?(00300) == false
p palindromic_number?(00300, 2) == true
p palindromic_number?(000567, 3) == false
p palindromic_number?(0000456540000, 4) == true
p palindromic_number?(0030, 1) == true # works because the method has been given the incorrect number of leading zeros
puts
p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
