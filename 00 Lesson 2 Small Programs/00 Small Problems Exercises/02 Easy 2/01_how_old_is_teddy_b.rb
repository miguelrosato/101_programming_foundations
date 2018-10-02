# 101 Programming Foundations. Exercises. Easy 2.
# 1.- How Old is Teddy Part B

# Modify this program to ask for a name, 
# and then print the age for that person. 
# For an extra challenge, use "Teddy" as 
# the name if no name is entered.

teddy_age = rand(20..200)

puts "Please enter the required name: "
teddy_name = gets.chomp

teddy_name == "" ? teddy_name = "Teddy" : teddy_name

puts "#{teddy_name} is #{teddy_age} years old!"
