# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with all five or more letter words reversed. Each
# string will consist of only letters and spaces. Spaces should be included only
# when more than one word is present.

### Notes ###

# Split string
# array.each
#   reverse! if length of element is >= 5
#   else next
# array.join(' ')

def reverse_words(string)
  array = string.split
  array.each do |e|
    e.reverse! if e.length >= 5
  end
  array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# Similar to solution
