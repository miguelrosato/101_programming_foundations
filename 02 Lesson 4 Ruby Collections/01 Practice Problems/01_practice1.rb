# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# it will return [1, 2, 3] since "hi", which is the last element of the block is a truthy value. It always return true, so the original array is returned
