# Write a method that takes a string as argument, and returns true if all parentheses
# in the string are properly balanced, false otherwise. To be properly balanced,
# parentheses must occur in matching '(' and ')' pairs.

def balanced?(str)
  parens = str.chars.select { |chr| chr =~ /[()]/}
  return false if parens.size.odd?
  parens.first != ')' && parens.last != '('
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What)) (is this))?') == false
p balanced?('((What) (is this))?') == true
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('())(()') == false # This one does not work with this solution
puts '---------'

# Solution:
def balanced?(str)
  parens = 0
  str.each_char do |chr|
    parens += 1 if chr == '('
    parens -= 1 if chr == ')'
    break if parens < 0
  end
  parens.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What)) (is this))?') == false
p balanced?('((What) (is this))?') == true
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('())(()') == false
