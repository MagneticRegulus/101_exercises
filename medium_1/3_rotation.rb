# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining digits,
# you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759.
# Keep the first 3 digits fixed in place and rotate again to get 321597. Finally,
# keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579.
# The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation
# of that argument. You can (and probably should) use the rotate_rightmost_digits
# method from the previous exercise.

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

def max_rotation(num)
  places = num.to_s.length
  rotated_num = num
  unless places == 1
    loop do
      rotated_num = rotate_rightmost_digits(rotated_num, places)
      places -= 1
      break if places == 1
    end
  end
  rotated_num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# another solution
def max_rotation(num)
  places = num.to_s.length
  places.downto(2) { |p| num = rotate_rightmost_digits(num, p) }
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
