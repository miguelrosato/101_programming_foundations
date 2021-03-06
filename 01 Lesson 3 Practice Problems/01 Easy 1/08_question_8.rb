# Lesson 3: Practice Problems
# Easy 1
# Question 8

# If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
# We will end up with this "nested" array:

# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.

p flintstones

flintstones.flatten!

p flintstones

# the .flatten method creates a new object array. flatten! modifies the current object