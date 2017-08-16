# Write a method that returns an Array that contains every other element of an
# Array that is passed in as an argument. The values in the returned list should
# be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

def oddities(array)
  odd_array = []
  array.each_with_index { |e, idx| odd_array << e if idx.even? }
  odd_array
end

# Alternative (from the comments)
def oddities(array)
  array.select.with_index { |e, idx| e if idx.even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

# Elements in even places (odd indices)
def evenies(array)
  even_array = []
  array.each_with_index { |e, idx| even_array << e if idx.odd? }
  even_array
end

# Alternative (from the comments)
def evenies(array)
  array.select.with_index { |e, idx| e if idx.odd? }
end
