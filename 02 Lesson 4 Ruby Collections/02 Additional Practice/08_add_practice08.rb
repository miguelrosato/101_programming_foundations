# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
  p numbers
end

# 1
# 3
# returns [3, 4]

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
  p numbers
end

# 1
# 2
# [1, 2]

# Loops operates on arrays on real time. So the iteration will run on the current size of the array and not the initial size. 

# since we are removing one element on the first iteration, the array becomes a three elements. The second iteration act on the secon element regardless, however, as soon as we remove the second element, the iterator will recognise that the array is now two elements in size and will not perform a third iteration. 