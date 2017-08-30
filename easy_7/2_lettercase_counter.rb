# Write a method that takes a string, and then returns a hash that contains 3 entries:
# one represents the number of characters in the string that are lowercase letters,
# one the number of characters that are uppercase letters, and one the number of
# characters that are neither.

# initialise character constants?
# initialise empty hash
# split string to array
# count character types and add to hash

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def letter_case_count(str)
  case_groups = {}
  str_ary = str.chars
  case_groups[:lowercase] = str_ary.count { |chr| LOWERCASE.include?(chr) }
  case_groups[:uppercase] = str_ary.count { |chr| UPPERCASE.include?(chr) }
  case_groups[:neither] = str.size - case_groups.values.reduce(:+)
  case_groups
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Solution - incorporates Regex, which is something I was trying to do

def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

# another version:

def letter_case_count(str)
  case_groups = {}
  case_groups[:lowercase] = str.count('a-z')
  case_groups[:uppercase] = str.count('A-Z')
  case_groups[:neither] = str.size - case_groups.values.reduce(:+)
  case_groups
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
