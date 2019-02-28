# Lesson 3: Practice Problems
# Medium 1
# Question 6



# In an earlier practice problem we saw that depending on a method to modify its arguments can be tricky:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga" # Doesn't modify the caller
  an_array_param << "rutabaga" # It modifies the caller
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# We learned that whether the above "coincidentally" does what we think we
# wanted "depends" upon what is going on inside the method.

# How can we refactor this practice problem to make the result easier
# to predict and easier for the next programmer to maintain?

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# It is better to create methods that do not alter the caller, and then
# if required, modify the method from the outside
