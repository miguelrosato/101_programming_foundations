# Small Problems Exercises. Easy 4.
# 5.- Multiples of 3 and 5


# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other
# number, and then computes the sum of those multiples. For instance, if the supplied number is
# 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

def multisum(num)
  count = 0
  (1..num).each { |idx| count += idx if (idx % 3).zero? || (idx % 5).zero? }
  count
end

p multisum(3) # == 3
p multisum(5) # == 8
p multisum(10) # == 33
p multisum(1000) # == 234168