# Write a program that reads the content of a text file and then prints the longest
# sentence in the file based on number of words. Sentences may end with periods
# (.), exclamation points (!), or question marks (?). Any sequence of characters
# that are not spaces or sentence-ending characters should be treated as a word.
# You should also print the number of words in the longest sentence.

def read_file(file)
  open(file) { |file| file.read }
end

def group_sentences(text)
  text.split(/([.!?])/)
end

def print_longest_sentence(file)
  text = read_file(file)
  sentences = group_sentences(text).map { |sent| sent.split }
  sorted = sentences.sort_by { |sent| sent.size }
  longest_idx = sentences.index(sorted.last)
  puts sentences[longest_idx].join(' ') << sentences[longest_idx + 1][0]
  puts sentences[longest_idx].size
end

print_longest_sentence('1_file_example_1.txt')

### review solution

text = File.read('1_file_example_1.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"
