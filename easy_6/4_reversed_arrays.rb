# Write a method that takes an Array as an argument, and reverses its elements in
# place; that is, mutate the Array passed into this method. The return value should
# be the same Array object.

# You may not use Array#reverse or Array#reverse!.

def reverse_ary!(ary)
  last_idx = ary.index(ary.last)
  loop do
    break if last_idx == 0 || last_idx == nil
    last_idx -= 1
    ary.insert(-1, ary.delete_at(last_idx))
  end
  ary
end

list = [1,2,3,4]
p result = reverse_ary!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
p reverse_ary!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
p reverse_ary!(list) # => ["abc"]
p list == ["abc"]

list = []
p reverse_ary!(list) # => []
p list == []

# Solution version:

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end
