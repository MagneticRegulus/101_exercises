# Write a method that takes one integer argument, which may be positive, negative,
# or zero. This method return true if the number's absolute value is odd. You may
# assume that the argument is a valid integer value.

### Notes

# The argument must have not have a remainder of 0 when dividing by 2

def is_odd?(num)
  (num.abs % 2) != 0 # added .abs after reading comments, but I cannot see that it is needed
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false

puts '------'

# If you weren't certain whether % were the modulus or remainder operator, how
# would you rewrite #is_odd? so it worked regardless?

def is_odd_again?(num)
  num.remainder(2) != 0
end

puts is_odd_again?(2)    # => false
puts is_odd_again?(5)    # => true
puts is_odd_again?(-17)  # => true
puts is_odd_again?(-8)   # => false
puts is_odd_again?(0)    # => false
