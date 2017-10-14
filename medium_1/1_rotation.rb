# Write a method that rotates an array by moving the first element to the end of
# the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

def rotate_array(ary)
  new_ary = []
  ary.each { |e| new_ary << e}
  new_ary << new_ary.shift
  new_ary
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# Solution version:
def rotate_array(ary)
  ary[1..-1] + [ary[0]] # need to concatenate 2 arrays
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# further exploration
def rotate_string(str)
  rotate_array(str.chars).join
end

p rotate_string('hello') == 'elloh'
p rotate_string('Gordon') == 'ordonG'

def rotate_integer(num)
  rotate_string(num.to_s).to_i
end

p rotate_integer(12345) == 23451
p rotate_integer(202) == 22
