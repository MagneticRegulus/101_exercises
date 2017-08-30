# Write a method that combines two Arrays passed in as arguments, and returns a
# new Array that contains all elements from both Array arguments, with the elements
# taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

def interleave(ary1, ary2)
  new_ary = []
  ary1.size == ary2.size ? elements = 3 : elements = 0
  count = 0
  elements.times do
    new_ary << ary1[count]
    new_ary << ary2[count]
    count += 1
  end
  elements != 0 ? new_ary : nil
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Solution:

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Further Exploration:

def interleave(ary1, ary2)
  ary1.zip(ary2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
