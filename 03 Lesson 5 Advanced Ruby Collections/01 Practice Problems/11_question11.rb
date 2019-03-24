# Lesson 5: Advanced Ruby Collections. Practice Problems
# Sorting, Nested Collections and Working with Blocks
# Question 11

# Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to the original but containing only the integers that are multiples of 3.

def multiple_three(arr)
  arr.map do |sub_arr|
    sub_arr.select { |el| el if (el % 3).zero? }
  end
end


my_array = [[2], [3, 5, 7], [9], [11, 13, 15]]

p multiple_three(my_array)


# Another way, with the reject method. However, keep in mind that, as code, the select method is more readable

def multiple_three2(arr)
  arr.map do |sub_arr|
    sub_arr.reject { |el| el if el % 3 != 0 }
  end
end


my_array2 = [[2], [3, 5, 7], [9], [11, 13, 15]]

p multiple_three2(my_array2)
