# Lesson 5: Advanced Ruby Collections. Practice Problems
# Sorting, Nested Collections and Working with Blocks
# Question 13

# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain.

def sort_by_odd(arr)
  arr.sort_by do |sub_arr|
    sub_arr.select(&:odd?)
  end
end

my_arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

p sort_by_odd(my_arr)