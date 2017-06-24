# Write a method that takes one argument, a string, and returns the same string
# with the words in reverse order.

### Notes ###

# Split the string into a new array (ignore punctuation)
# reverse the new array
# create a new string
# append each element in the revesed array to the new string
# return the new string

def reverse_sentence(sentence)
  sentence_array = sentence.split
  reversed_sentence = ''
  sentence_array.reverse.each { |e| reversed_sentence << (e + ' ') }
  reversed_sentence.chop
end

# These should return true

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# solution (which is way easier)

def reverse_sentence_again(string)
  string.split.reverse.join(' ')
end
