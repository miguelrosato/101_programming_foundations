# Lesson 3: Practice Problems
# Hard 1
# Question 2

# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # It will be { a: 'hi there'}, since the append << method will affect the original object assigned to the key a: in the greetings Hash


# In order to prevent the modification of the original object, we can do the following: 

# We could initialize informal_greeting with a reference to a new object containing the same value by informal_greeting = greetings[:a].clone.
# We can use string concatenation, informal_greeting = informal_greeting + ' there', which returns a new String object instead of modifying the original object.