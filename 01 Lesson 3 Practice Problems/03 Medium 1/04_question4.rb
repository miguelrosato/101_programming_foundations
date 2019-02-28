# Lesson 3: Practice Problems
# Medium 1
# Question 4


# Alyssa was asked to write an implementation of a rolling buffer.
# Elements are added to the rolling buffer and if the buffer becomes
# full, then new elements that are added will displace the oldest elements
# in the buffer.

# She wrote two implementations saying, "Take your pick. Do you
# like << or + for modifying the buffer?". Is there a difference
# between the two, other than what operator she chose to use to add 
# an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

array1 = [10, 4, 5, 9]
array2 = [10, 4, 5, 9]
p rolling_buffer1(array1, 4, 18)
p array1

# The first method, using the << method, modify the caller argument

p rolling_buffer2(array2, 4, 18)
p array2

# The second method, just summing the element does not alter the original caller.

# Each method must be used carefully depending in the wanted outcome. 
# The first method could be used in case we want to archive the result to be 
# used later. 