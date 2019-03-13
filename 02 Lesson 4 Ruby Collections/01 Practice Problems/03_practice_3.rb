# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# It will return the original array, since the reject method return the original arrays, removing the elements for which a condition is true. Since puts num returns nil, which is always falsy, it will return the original array