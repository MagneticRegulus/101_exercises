# Write a method that will take a short line of text, and print it within a box.

def print_in_box(text)
  banner_width = text.length + 2
  puts "+#{'-' * banner_width}+"
  puts "|#{' ' * banner_width}|"
  puts "| #{text} |"
  puts "|#{' ' * banner_width}|"
  puts "+#{'-' * banner_width}+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
puts

# Refactored:
puts '-----------'
puts 

def print_in_box(text)
  banner_width = text.length + 2
  top_and_bottom = "+#{'-' * banner_width}+"
  spaced_border = "|#{' ' * banner_width}|"

  puts top_and_bottom
  puts spaced_border
  puts "| #{text} |"
  puts spaced_border
  puts top_and_bottom
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
