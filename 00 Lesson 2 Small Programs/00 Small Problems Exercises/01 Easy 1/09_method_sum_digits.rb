# 101 Programming Foundations. Small Problems Exercises.
# 09 Sum of Digits

# Write a method that takes one argument, a positive integer, 
# and returns the sum of its digits.

def sum(num)
  # number = 0                                      My Ansswer
  # arr = num.to_s.split("")                        My Answer
  # arr.each { |num| number = number + num.to_i }   My Answer
  # number                                          My Answer
  num.to_s.chars.map(&:to_i).reduce(:+)           # LS Answer
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
