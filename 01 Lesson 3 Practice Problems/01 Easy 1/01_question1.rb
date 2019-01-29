# Lesson 3: Practice Problems
# Easy 1
# Question 1
# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq!

p numbers 

# It will prints:
# 1
# 2
# 2
# 3

# The reason for this is that the uniq method returns a new array. 
# If we want to keep the same object, but modified, then we use:
# numbers.uniq!