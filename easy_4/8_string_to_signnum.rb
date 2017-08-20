# Write a method that takes a String of digits, and returns the appropriate number
# as an integer. The String may have a leading + or - sign; if the first character
# is a +, your method should return a positive number; if it is a -, your method
# should return a negative number. If no sign is given, you should return a positive number.

DIGITS = {
  '0'=>0, '1'=>1, '2'=>2, '3'=>3, '4'=>4,
  '5'=>5, '6'=>6, '7'=>7, '8'=>8, '9'=>9
}

def string_to_integer(string_num)
  int_array = string_num.chars.map { |num| DIGITS[num] }

  integer = 0
  int_array.each { |num| integer = 10 * integer + num }
  integer
end

def string_to_signed_integer(string_num)
  if string_num.start_with?('-')
    string_to_integer(string_num.delete '-') * -1
  else
    string_to_integer(string_num.delete '+')
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# further exploration:
def string_to_signed_integer(string_num)
  sym = string_num[0]
  string_num = string_num[1..-1] if sym == '-' || sym == '+'
  string_to_integer(string_num) * (sym == '-' ? -1 : 1)
end

puts '----'
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
