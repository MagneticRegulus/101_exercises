# Write a method that returns a list of all substrings of a string that are palindromic.
# That is, each substring must consist of the same sequence of characters forwards
# as it does backwards. The return value should be arranged in the same sequence
# as the substrings appear in the string. Duplicate palindromes should be included multiple times.

def substrings(str)
  chars = str.chars
  substrings = []
  loop do
    break if chars.empty?
    chars.size.times do |idx|
      substrings << chars[0..idx].join
    end
    chars.shift
  end
  substrings
end

def palindromes(str)
  all_substrings = substrings(str)
  all_substrings.select { |str| str == str.reverse && str.size > 1 }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

puts '-----------------'

# Further Exploration
def substrings(str)
  chars = str.chars
  substrings = []
  loop do
    break if chars.empty?
    chars.size.times do |idx|
      substrings << chars[0..idx].join
    end
    chars.shift
  end
  substrings
end

def include_non
  # create helper method to ignore non-alphas and case
end

def palindromes(str)
  all_substrings = substrings(str)
  all_substrings.select do |str|
    str == str.reverse && str.size > 1
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', 'madam', 'ada', 'did', 'madam', 'ada', 'oo'
]

p palindromes('hello-madam-did-madam-goodbye')

p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
