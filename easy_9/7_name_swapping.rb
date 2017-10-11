# Write a method that takes a first name, a space, and a last name passed as a
# single String argument, and returns a string that contains the last name, a
# comma, a space, and the first name.

def swap_name(name)
  split_name = name.split
  "#{split_name[-1]}, #{split_name[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

# solution version
def swap_name(name)
  name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

# alternate, from the comments
def swap_name(name)
  split_name = name.split
  "#{split_name.last}, #{split_name.first}"
end
