# Lesson 3: Practice Problems
# Medium 2
# Question 3

# Let's call a method, and pass both a string and an array as parameters and see how even though they are treated in the same way by Ruby, the results can be different.

# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]

tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


# "My string looks like this now: pumpkins" The reasignment of a string value, does not modify the caller
# "My array looks like this now: ["pumpkins", "rutabaga"]" The append << method adds an element to the original caller