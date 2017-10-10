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

p palindromes('Madam') == ['ada'] # case sensitive

puts '-----------------'

# Further Exploration
def substrings(str)
  chars = str.chars
  substrings = []
  loop do
    break if chars.empty?
    chars.size.times do |idx|
      substrings << chars[0..idx].join.downcase
    end
    chars.shift
  end
  substrings
end

def include_non?(str)
  non_alpha_num = str.chars.select { |char| char =~ /[^a-z0-9]/i}
  !non_alpha_num.empty?
end

def palindrome?(str)
  str == str.reverse && str.size > 1
end

def palindromes(str)
  all_substrings = substrings(str)
  all_substrings.select do |str|
    palindrome?(str) && !include_non?(str)
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', 'madam', 'ada', 'did', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
p palindromes('Tacocat') == ['tacocat', 'acoca', 'coc']

p palindromes('Tacocat')
p palindromes('hello-madam-did-madam-goodbye')
