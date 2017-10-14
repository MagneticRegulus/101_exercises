# Write a method that determines the mean (average) of the three scores passed to
# it, and returns the letter value associated with that grade.

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'

# Tested values are all between 0 and 100. There is no need to check for negative
# values or values greater than 100.

def get_grade(first, second, third)
  letter_grades = {
    A: (90..100), B: (80...90), C: (70...80), D: (60...70), F: (0...60)
  }
  mean = (first + second + third) / 3
  score_range = letter_grades.values.select { |score| score.member?(mean) }
  letter_grades.key(score_range[0]).to_s
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(95, 90, 93)
p get_grade(50, 50, 95)

# Solution version:
 def get_grade(first, second, third)
   mean = (first + second + third) / 3

   case mean
   when 90..100 then 'A'
   when 80...90 then 'B'
   when 70...80 then 'C'
   when 60...70 then 'D'
   else              'F'
   end
 end

 p get_grade(95, 90, 93) == "A"
 p get_grade(50, 50, 95) == "D"
 p get_grade(95, 90, 93)
 p get_grade(50, 50, 95)
