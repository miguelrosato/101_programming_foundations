# Lesson 3: Practice Problems
# Easy 1
# Question 4
# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original
# array between method calls)?

numbers.delete_at(1)
p numbers
# This method will delete any number 1 present in the array
numbers.delete(1)
p numbers
# This method will delete the array element present at the index 1, which in 
# this case is 3 (we have previously deleted the 1 from the initial array)

# Both methods are destructive


