# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.

def running_total(num_array)
  totals_array = []
  num_array.each_with_index do |num, idx|
    idx == 0 ? totals_array << num : totals_array << num + totals_array[idx - 1]
  end
  totals_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# More legible way to write this (potentially more legible):
def running_total(num_array)
  totals_array = []
  num_array.each_with_index do |num, idx|
    if idx > 0
      totals_array << num + totals_array[idx - 1]
    else
      totals_array << num
    end
  end
  totals_array
end

puts '-----'
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# Solution version:
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

puts '-----'
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
