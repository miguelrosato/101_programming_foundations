# Lesson 5: Advanced Ruby Collections. Practice Problems
# Sorting, Nested Collections and Working with Blocks
# Question 9

# Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

def array_sorting(arr)
  arr.map do |sub_arr|
    sub_arr.sort do |a, b|
      b <=> a
    end
  end
end


my_arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p array_sorting(my_arr)

# Using  