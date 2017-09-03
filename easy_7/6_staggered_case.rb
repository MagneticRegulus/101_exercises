# Modify the method from the previous exercise so it ignores non-alphabetic characters
# when determining whether it should uppercase or lowercase each letter. The non-alphabetic
# characters should still be included in the return value; they just don't count
# when toggling the desired case.

# includes further ex:
def staggered_case(str, upcase_first: true, count_all: false)
  new_str = ''
  str.each_char do |chr|
    if chr =~ /[^a-z]/i
      new_str << chr
      upcase_first = !upcase_first if count_all # further ex
    else
      upcase_first ? new_str << chr.upcase : new_str << chr.downcase
      upcase_first = !upcase_first
    end
  end
  new_str
end

p staggered_case('I Love Launch School!')
p staggered_case('I Love Launch School!', count_all: true)
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
