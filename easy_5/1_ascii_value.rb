# Write a method that determines and returns the ASCII string value of a string
# that is passed in as an argument. The ASCII string value is the sum of the ASCII
# values of every character in the string. (You may use String#ord to determine
# the ASCII value of a character.)

def ascii_value(string)
  return 0 if string.empty?
  string.chars.map { |chr| chr.ord }.reduce(:+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# Another version (better actually) after looking at the comments:
def ascii_value(string)
  string.chars.map { |chr| chr.ord }.reduce(0, :+)
end

puts '----'
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# Solution:
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

# Further Exploration:
# There is an Integer method such that:

# char.ord.mystery == char

# where mystery is our mystery method. Can you determine what method name should
# be used in place of mystery? What happens if you try this with a longer string
# instead of a single character?

# method is #chr

puts '-----'
p 'F'.ord.chr == 'F'
p 'o'.ord.chr == 'o'
p 'u'.ord.chr == 'u'
p 'r'.ord.chr == 'r'
p 'Four score'.ord.chr == 'Four score' # => false; #ord only works for a single
# character string, so it will only look at the first character
