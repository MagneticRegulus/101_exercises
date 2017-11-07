# In the easy exercises, we worked on a problem where we had to count the number
# of uppercase and lowercase characters, as well as characters that were neither
# of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries:
# one represents the percentage of characters in the string that are lowercase letters,
# one the percentage of characters that are uppercase letters, and one the percentage
# of characters that are neither.

# You may assume that the string will always contain at least one character.

def percentage(percent, total)
  percent.to_f / total * 100
end

def letter_percentages(str)
  total_chars = str.length
  lower_count = str.chars.select { |chr| chr =~ /[a-z]/ }.count
  upper_count = str.chars.select { |chr| chr =~ /[A-Z]/ }.count
  non_count = str.chars.select { |chr| chr =~ /[^a-z]/i }.count
  {
    lowercase: percentage(lower_count, total_chars),
    uppercase: percentage(upper_count, total_chars),
    neither: percentage(non_count, total_chars)
  }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
