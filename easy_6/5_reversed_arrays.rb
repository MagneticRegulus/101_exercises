# Write a method that takes an Array, and returns a new Array with the elements
# of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method
# you wrote in the previous exercise.

def reverse_ary(ary)
  new_ary = []
  idx = -1
  ary.size.times do
    new_ary << ary[idx]
    idx -= 1
  end
  new_ary
end

p reverse_ary([1,2,3,4]) == [4,3,2,1]          # => true
p reverse_ary(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse_ary(['abc']) == ['abc']              # => true
p reverse_ary([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse_ary(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true

# Soltuion: (way better)

def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end
