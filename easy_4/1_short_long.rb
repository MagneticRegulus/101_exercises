# Write a method that takes two strings as arguments, determines the longest of
# the two strings, and then returns the result of concatenating the shorter string,
# the longer string, and the shorter string once again. You may assume that the
# strings are of different lengths.

def short_long_short(str1, str2)
  return str2 + str1 + str2 if str1.size > str2.size
  return str1 + str2 + str1 if str2.size > str1.size
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
p short_long_short('123', '234')

def short_long_short(str1, str2)
  str1.size > str2.size ? str2 + str1 + str2 : str1 + str2 + str1
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
p short_long_short('123', '234')

# saw this in the comments as well:

def short_long_short(string, string2)
  short, long = [string, string2].sort { |a, b| a <=> b }
  short + long + short
end
