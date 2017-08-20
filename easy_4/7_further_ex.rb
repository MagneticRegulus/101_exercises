# Write a hexadecimal_to_integer method that converts a string representing a
# hexadecimal number to its integer value.

HEX_DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15
}

def hexadecimal_to_integer(hex)
  digits = hex.downcase.chars.map { |char| HEX_DIGITS[char] }

  value = 0
  digits.each { |digit| value = 16 * value + digit }
  value
end

p hexadecimal_to_integer('4D9f') == 19871
p hexadecimal_to_integer('153BD') == 86973
p hexadecimal_to_integer('D9A5') == 55717
p hexadecimal_to_integer('A2D') == 2605
p hexadecimal_to_integer('27E') == 638
