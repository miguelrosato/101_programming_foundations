['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# The count method will count thos strings, that meet the condition that the string length is less than 4. which means that "ant" and "bat" will be counted, returning a value of 2. To confirm, we can consult the documentation:

# If a block is given, counts the number of elements for which the block returns a true value.

# Count consider the truthiness of the block return value 

def counter(arr)
  arr.count do |str|
    str.length < 4
  end
end

p counter(['ant', 'bat', 'caterpillar']) # == 2