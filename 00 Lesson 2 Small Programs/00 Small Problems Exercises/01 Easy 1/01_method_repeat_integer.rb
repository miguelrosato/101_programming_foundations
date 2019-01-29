cd # 101 Programming Foundations. Small Problems Exercises. 01 Method Repeat 
# Integer.

# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

def repeat(str, int)
  int.times { puts str }
end

my_string = "Hello Miguel Rosato!!!"
my_integer = 6

repeat(my_string, my_integer)

