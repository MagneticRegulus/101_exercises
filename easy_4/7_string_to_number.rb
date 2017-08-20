# Write a method that takes a String of digits, and returns the appropriate
# number as an integer.

def string_to_integer(string_num)
  hash = {
    '0'=>0, '1'=>1, '2'=>2, '3'=>3, '4'=>4,
    '5'=>5, '6'=>6, '7'=>7, '8'=>8, '9'=>9
  }
  int_array = string_num.chars.map { |num| hash[num] }
  tens = 1
  integer = 0
  int_array.size.times do
    integer += int_array.pop * tens
    tens *= 10
  end
  integer
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# Solution (quite similar, actually):

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit } # had to sort of think about this one
  value
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
