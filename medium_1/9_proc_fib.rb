# Rewrite your recursive fibonacci method so that it computes its results without recursion.

def fibonacci(nth)
  fib_nums = [1, 1]
  (nth - 2).times { fib_nums << fib_nums[-2] + fib_nums[-1] }
  fib_nums[nth - 1]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501

#solution version - much faster than my version
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001)
