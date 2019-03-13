# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# map will always return an array, with a number of elements equal to the original array. A hash is equivalent to an array of arrays, so in this case, our hash is equivalent to an array with two elements. 
# The first element of the array, when evaluated in the block, returns false (hence nil), while the second iteration on the block return true (hence 'bear'), so the resultant array is:

# [nil, 'bear']
