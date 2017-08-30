# Write a method that takes a single String argument and returns a new string that
# contains the original value of the argument with the first character of every
# word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

def word_cap(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Solution has an even more succinct version:

def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Further Exploration:

def word_cap(str)
  str.split.map(&:downcase).each { |word| word[0] = word[0].upcase }.join(' ')
end

p word_cap('four score and seven')
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
