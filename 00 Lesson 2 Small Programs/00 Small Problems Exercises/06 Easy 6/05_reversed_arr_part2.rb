#require 'pry'

# Small Problems Exercises. Easy 6.
# 5.- Reversed Arrays. Part 2

# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

def reverse(arr)
  result_arr = []
  index_neg = -1
  arr.length.times do
    result_arr << arr[index_neg]
    index_neg -= 1
  end
  result_arr
end

p reverse([1,2,3,4]) # == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) # == %w(c d e b a)  # => true
p reverse(['abc']) # == ['abc']              # => true
p reverse([]) # == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p new_list
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

