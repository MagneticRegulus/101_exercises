# In this exercise, you will write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.

def xor?(arg1, arg2)
  return true if arg1 && !arg2
  return true if arg2 && !arg1
  false
end

# More idiomatic way to write this in ruby:
def xor?(value1, value2)
  (value1 && !value2) || (value2 && !value1)
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
# all above should return true when the program is run.

# original syntx used:
# def xor?(arg1, arg2)
#  return true if arg1 == true && arg2 == false
#  return true if arg2 == true && arg1 == false
#  false
# end

# from the comments:
# def xor?(con_1, con_2)
#   !(con_1 == con_2)
# end
