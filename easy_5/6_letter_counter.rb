# Write a method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

def word_sizes(words)
  hash = {}
  words.split.each do |word|
    if hash.include?(word.size)
      hash[word.size] += 1
    else
      hash[word.size] = 1
    end
  end
  hash
end

p word_sizes('Four score and seven.')
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

puts '----'

# Solution

def word_sizes(words_string)
  counts = Hash.new(0) # default value form of initializing returns 0 by default 
  words_string.split.each do |word|
    counts[word.size] += 1 # had tried this but it wasn't working
  end
  counts
end

p word_sizes('Four score and seven.')
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
