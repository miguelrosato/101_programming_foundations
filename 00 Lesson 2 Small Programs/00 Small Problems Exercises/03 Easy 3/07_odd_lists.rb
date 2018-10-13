# Small Problems Exercises. Easy 3.
# 7.- Odd Lists. Method


# Write a method that returns an Array that contains every
# other element of an Array that is passed in as an argument.
# The values in the returned list should be those values that
# are in the 1st, 3rd, 5th, and so on elements of the argument Array.


def oddities(arr)
arr2 = []
counter = 0

while counter < arr.size 
  arr2 << arr[counter]
  counter += 2
end
arr2
end

def oddities2(arr)
  arr2 = []
  arr2 = arr.select { |ind| arr2 << arr[ind] if ind.odd? }
end
p oddities([1, 2, 3, 4, 5, 6])
p oddities2([1, 2, 3, 4, 5, 6])

