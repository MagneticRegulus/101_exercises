# Write a method that takes two arguments, a string and a positive integer, and
# prints the string as many times as the integer indicates.

### Notes ###

# integer cannot be negative, zero, or float

def repeat(string, i)
  if i == i.to_s.to_i # could make this it's own method like integer?()
    if i > 0
      i.times {puts string}
    else
      puts "#{i} is not a positive integer."
    end
  else
    puts "#{i} is not an integer."
  end
end

# test cases

repeat('Hello', 3)
repeat('One', 1)
repeat('Ten', 10)
repeat('Twenty-two', 22)

# edge cases - I have provided errors for:

repeat('negative', -5)
repeat('zero', 0)
repeat('float', 1.5)
repeat('string', 'hi')

# short version - does not handle edge cases

def repeat_again(string, i)
  i.times {puts string}
end

repeat_again('negative', -5) # prints nothing
repeat_again('zero', 0) # prints nothing
repeat_again('float', 1.5) # errors
