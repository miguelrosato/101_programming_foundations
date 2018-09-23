# 101 Programming Foundations. Small Problems Exercises.
# 08 Array Average

# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be
# empty and the numbers will always be positive integers.

def average(arr)
  # elements = 0 This was my answer
  # arr.each { |element| elements += element } This was my answer

  elements = arr.reduce { |elements, number| elements + number }
  elements / arr.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25      # true
puts average([9, 47, 23, 95, 16, 52]) == 40   # true
