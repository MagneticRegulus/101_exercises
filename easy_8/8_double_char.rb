# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
# whitespace should not be doubled.

def double_consonants(str)
  str.chars.map { |char| char =~ /[b-df-hj-np-tv-z]/i ? char * 2 : char }.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

# More legible version of my answer:

def double_consonants(str)
  char_array = str.chars.map do |char|
    if char =~ /[a-z]/i && char =~ /[^aeiou]/i
      char * 2
    else
      char
    end
  end
  char_array.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
