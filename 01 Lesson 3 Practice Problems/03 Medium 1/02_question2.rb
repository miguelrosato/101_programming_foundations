# Lesson 3: Practice Problems
# Medium 1
# Question 2

# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# It trows an error because we are trying to add a string to an integer. 
# We need to use string interpolation to convert the integer into a string and 
# then add. 

puts "the value of 40 + 2 is #{(40 + 2)}"
