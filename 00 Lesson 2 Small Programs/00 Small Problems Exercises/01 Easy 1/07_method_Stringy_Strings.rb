# 101 Programming Foundations. Small Problems Exercises.
# 07 Stringy String

# Write a method that takes one argument, a positive integer, and returns a 
# string of alternating 1s and 0s, always starting with 1. The length of the 
# string should match the given integer.

def stringy(num)
  stringy = []
  num.times do |idx|
    number = idx.even? ? 1 : 0
    stringy << number
  end
  stringy.join
end

puts stringy(6) == '101010'       # true
puts stringy(9) == '101010101'    # true
puts stringy(4) == '1010'         # true
puts stringy(7) == '1010101'      # true
