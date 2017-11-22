# require "1_madlibs.txt"

MADLIBS = {
  'animal' => ['cat', 'dog', 'bunny', 'horse', 'giraffe', 'kiwi'],
  'verb' => ['licks', 'sniffs', 'growls at', 'chases', 'nuzzles'],
  'adj' => ['sleepy', 'grumpy', 'sneezy', 'dopey', 'bashful'],
  'adv' => ['lazily', 'quickly', 'happily', 'noisily', 'angrily'],
  'color' => ['yellow', 'brown', 'white', 'black', 'ginger', 'spotty'],
  'part' => ['tail', 'paw', 'ear', 'hooves', 'nose']
}

def read_file(file)
  open(file) { |file| file.read }
end

madlib_text = read_file('1_madlibs.txt').split(' ')
word_types = MADLIBS.keys
madlib_text.each_with_index do |word, idx|
  if word_types.include?(word)
    madlib_text[idx] = MADLIBS[word].sample
  end
end

madlib_text = madlib_text.join(' ')

puts madlib_text

# look to re-write this using Kernel#formt
