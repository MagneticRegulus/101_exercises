# Write a method that takes an Array as an argument, and sorts that Array using
# the bubble sort algorithm as just described. Note that your sort will be "in-place";
# that is, you will mutate the Array passed as an argument. You may assume that
# the Array contains at least 2 elements.

def bubble_sort!(ary)
  exchanges = []
  last_idx = ary.size - 1
  until exchanges.size > 0 && exchanges.none?
    exchanges.clear
    idx = 0
    while idx < last_idx
      if ary[idx] > ary[idx +1]
        ary[idx], ary[idx +1] = ary[idx +1], ary[idx]
        exchanges << true
      else
        exchanges << false
      end
      idx += 1
    end
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]
p array

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]
p array

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p array

# Solution version
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end
