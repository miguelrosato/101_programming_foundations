# Lesson 5: Advanced Ruby Collections. Practice Problems
# Sorting, Nested Collections and Working with Blocks
# Question 1

# How would you order this array of number strings by descending numeric value?

def sort_reverse(arr)
  arr.map(&:to_i).sort.reverse.map(&:to_s)
end

my_arr = ['10', '11', '9', '7', '8']


p sort_reverse(my_arr)


# Using the comparison and sort method:


def sort_reverse2(arr)
  arr.sort do |a, b|
    b.to_i <=> a.to_i
  end
end

my_arr2 = ['10', '11', '9', '7', '8']


p sort_reverse2(my_arr2)