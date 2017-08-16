# Write a method that takes a year as input and returns the century. The return
# value should be a string that begins with the century number, and ends with st,
# nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise
# the 20th century.

def century(year)
  cent_ends = { '1'=>'st', '2'=>'nd', '3'=>'rd'}

  century = (year % 100 == 0 ? year / 100 : (year / 100) + 1).to_s

  last_in_hash = cent_ends.keys.include?(century[-1])
  early_teens = (11..13).include?(century[-2, 2].to_i)

  last_in_hash && !early_teens ? century + cent_ends[century[-1]] : "#{century}th"

end

p century(2000)
p century(1950)
p century(1901)
p century(2017)
p century(917)
p century(1017)
p century(1117)
p century(1217)
p century(1317)
p century(17)
p century(117)
p century(217)
p century(317)
puts
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# I think my method is long-winded, but it works.

# The solution uses 2 methods, so I will give this a go.

def century_suffix(century)
  return 'th' if (11..13).include?(century % 100)

  case century.to_s[-1]
  when '1' then 'st'
  when '2' then 'nd'
  when '3' then 'rd'
  else 'th'
  end
end

def century(year)
  century = year % 100 == 0 ? year / 100 : (year / 100) + 1
  century.to_s + century_suffix(century)
end

puts '----2nd try-----'
p century(2000)
p century(1950)
p century(1901)
p century(2017)
p century(917)
p century(1017)
p century(1117)
p century(1217)
p century(1317)
p century(17)
p century(117)
p century(217)
p century(317)
puts
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
