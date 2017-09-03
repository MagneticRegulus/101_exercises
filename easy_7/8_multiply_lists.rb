# Write a method that takes two Array arguments in which each Array contains a list
# of numbers, and returns a new Array that contains the product of each pair of
# numbers from the arguments that have the same index. You may assume that the
# arguments contain the same number of elements.

def multiply_list(nums1, nums2)
  products = []
  nums1.size.times { |idx| products << nums1[idx] * nums2[idx] }
  products
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Further Exploration:

# The Array#zip method can be used to produce an extremely compact solution to this
# method. Read the documentation for zip, and see if you can come up with a one
# line solution (not counting the def and end lines).

def multiply_list(nums1, nums2)
  nums1.zip(nums2).map { |e| e.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
