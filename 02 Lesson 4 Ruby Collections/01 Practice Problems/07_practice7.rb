# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# The block will puts the first number. The any? method will return true, since 1 is odd. At this point the execution of the block will stop, since the any? method is confirmed to be true.