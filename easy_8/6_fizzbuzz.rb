# Write a method that takes two arguments: the first is the starting number, and
# the second is the ending number. Print out all numbers between the two numbers,
# except if a number is divisible by 3, print "Fizz", if a number is divisible by
# 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

def div_by_three?(num)
  num % 3 == 0
end

def div_by_five?(num)
  num % 5 == 0
end

def fizzbuzz(start_num, end_num)
  num_list = (start_num..end_num).to_a
  fizzbuzzers = num_list.map do |num|
    case
    when div_by_three?(num) && div_by_five?(num) then 'FizzBuzz'
    when div_by_three?(num) then 'Fizz'
    when div_by_five?(num) then 'Buzz'
    else
      num
    end
  end
  puts fizzbuzzers
end


fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
