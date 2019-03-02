# Lesson 3: Practice Problems
# Medium 2
# Question 5


# How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

p color_valid("blue")


def color_valid2(color)
  %w(blue green).include?(color)
end
puts " "
p color_valid2("blue")
p color_valid2("red")
p color_valid2("green")

def color_valid3(color)
  color == "blue" || color == "green"
end
puts " "
p color_valid3("blue")
p color_valid3("red")
p color_valid3("green")