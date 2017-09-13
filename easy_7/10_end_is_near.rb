# Write a method that returns the next to last word in the String passed to it as
# an argument. Words are any sequence of non-blank characters. You may assume that
# the input String will always contain at least two words.

def penultimate(words)
  word_ary = words.split
  word_ary[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

# Further Exploration:

# Suppose we need a method that retrieves the middle word of a phrase/sentence.
# What edge cases need to be considered? How would you handle those edge cases
# without ignoring them? Write a method that returns the middle word of a phrase
# or sentence. It should handle all of the edge cases you thought of.

# So I will define firstly that the middle word of a phrase is the (float / 2).round(th)
# element. The idx of which will be (float / 2).round - 1
# This will assume that the string will have an odd number of words.
# Edge cases of course will be:
## strings with an even number of words. these will return nil. I will add an option to include these
## empty strings (these will return nil)
## strings with 1 or 2 words (theses will always return nil). Add an option for this?

def middle_word(words, include_even: false)
  word_ary = words.split
  return nil if include_even != true && word_ary.size.even?
  middle = (word_ary.size.to_f / 2).round
  puts "Word no. #{middle} for size of #{word_ary.size}"
  word_ary[middle - 1]
end

p middle_word('One')
p middle_word('Two words')
p middle_word('There are three')
p middle_word('Now, there are four')
p middle_word('Holy hell, there are five')
p middle_word('One', include_even: true)
p middle_word('Two words', include_even: true)
p middle_word('There are three', include_even: true)
p middle_word('Now, there are four', include_even: true)
p middle_word('Holy hell, there are five', include_even: true)
