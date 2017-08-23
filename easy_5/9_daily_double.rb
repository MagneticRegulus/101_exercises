# Write a method that takes a string argument and returns a new string that contains
#the value of the original string with all consecutive duplicate characters collapsed
# into a single character. You may not use String#squeeze or String#squeeze!.

def crunch(string)
  string.each_char { |chr| string.gsub!(chr * 2, chr) }
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

# They above works, but mutates, which is not what the exercise calls for

def crunch(string)
  new_string = ''
  string.each_char { |chr| new_string << chr unless new_string.end_with?(chr) }
  new_string
end

puts '----'
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
