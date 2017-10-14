# Write a method that can rotate the last n digits of a number.
# Rotating just 1 digit results in the original number being returned.
# You may use the rotate_array method from the previous exercise if you want.
# You may assume that n is always a positive integer.

def rotate_array(ary)
  ary[1..-1] + [ary[0]] # need to concatenate 2 arrays
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_integer(num)
  rotate_string(num.to_s).to_i
end

def rotate_rightmost_digits(num, digits)
  str_num = num.to_s
  right_digits = rotate_string(str_num[-digits..-1])
  left_digits = str_num[0..(-digits - 1)]
  (left_digits + right_digits).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
