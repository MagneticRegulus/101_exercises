# Write a method that displays a 4-pointed diamond in an n x n grid, where n is
# an odd integer that is supplied as an argument to the method. You may assume
# that the argument will always be an odd integer.

def indent(spaces)
  ' ' * spaces
end

def print_row(n, idx)
  if idx.odd?
    padding = (n - idx) / 2
    puts "#{indent(padding)}#{'*' * idx}#{indent(padding)}"
  end
end

def diamond(n)
  1.upto(n) { |idx| print_row(n, idx) }
  (n - 1).downto(1) { |idx| print_row(n, idx) }
end

diamond(1)
diamond(3)
diamond(9)

# Further Exploration: Try modifying your solution or our solution so it prints
# only the outline of the diamond

def empty_spaces(idx)
  idx > 2 ? "*#{' ' * (idx - 2)}*" : '*'
end

def print_row(n, idx)
  if idx.odd?
    padding = (n - idx) / 2
    puts "#{indent(padding)}#{empty_spaces(idx)}#{indent(padding)}"
  end
end

diamond(1)
diamond(3)
diamond(9)
