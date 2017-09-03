# Write a method that takes a String as an argument, and returns a new String that
# contains the original value using a staggered capitalization scheme in which
# every other character is capitalized, and the remaining characters are lowercase.
# Characters that are not letters should not be changed, but count as characters
# when switching between upper and lowercase.

def staggered_case(str)
  new_str = []
  str.chars.each_with_index do |chr, idx|
    idx.even? ? new_str << chr.upcase : new_str << chr.downcase
  end
  new_str.join
end

p staggered_case('I Love Launch School!')
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Modify this method so the caller can request that the first character be downcased
# rather than upcased? If the first character is downcased, then the second character
# should be upcased, and so on. Hint: Use a keyword argument.

def staggered_case(str, upcase_first: true)
  new_str = ''
  str.chars.each_with_index do |chr, idx|
    idx.even? ? new_str << chr.upcase : new_str << chr.downcase
  end
  upcase_first ? new_str : new_str.swapcase
end

p staggered_case('I Love Launch School!')
p staggered_case('I Love Launch School!', upcase_first: false)
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
