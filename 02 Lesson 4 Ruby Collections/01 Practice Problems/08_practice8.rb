# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
p arr.take(2)
p arr
# Take is a non destructive method that takes the first "n values of an array and return them in a new array. So the result here is [1, 2]"