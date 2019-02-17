def get_grade(num1, num2, num3)
  score = (num1 + num2 + num3) / 3

  case 
  when score >= 90 && score <= 100 then "A"
  when score < 90 && score >= 80 then "B"
  when score < 80 && score >= 70 then "C"
  when score < 70 && score >= 60 then "D"
  when score < 60 && score >= 0 then "F"
  end
end 

p get_grade(95, 90, 93) # == "A"
p get_grade(50, 50, 95) # == "D"


# A clearer solution

def get_grade2(num1, num2, num3)
  score = (num1 + num2 + num3) / 3

  case score
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else             "F"
  end
end

puts " "


p get_grade2(95, 90, 93) # == "A"
p get_grade2(50, 50, 95) # == "D"