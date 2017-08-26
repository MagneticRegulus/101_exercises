# Write a method that calculates and returns the index of the first Fibonacci number
# that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

# return 1 if arg == 1
# intialise previous 2 numbers (both are 1)
# intialise idx == 2
# loop:
## idx += 1
## add prev_1 + prev_2 and set equal to curr_fib
## break if curr_fib digit length == arg
## prev 1 = prev_2
## prev_2 = curr_fib
## idx

FIB_IDX_1 = 1
FIB_IDX_2 = 1

def num_of_digits(int)
  int.to_s.size
end

def find_fibonacci_index_by_length(digits)
  return 1 if digits == 1
  prev_1 = FIB_IDX_1
  prev_2 = FIB_IDX_2
  idx = 2
  loop do
    idx += 1
    curr_fib = prev_1 + prev_2
    break if num_of_digits(curr_fib) == digits
    prev_1 = prev_2
    prev_2 = curr_fib
  end
  idx
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

puts

#---OR---

FIRST_2_FIBS = [1, 1]

def num_of_digits(int)
  int.to_s.size
end

def find_fibonacci_index_by_length(digits)
  return 1 if digits == 1
  fib_numbers = FIRST_2_FIBS
  loop do
    fib_numbers << fib_numbers[-2] + fib_numbers[-1]
    break if num_of_digits(fib_numbers.last) == digits
  end
  fib_numbers.length
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
