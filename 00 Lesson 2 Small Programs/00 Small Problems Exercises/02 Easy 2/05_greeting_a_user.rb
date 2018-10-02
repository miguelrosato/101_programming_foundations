# 101 Programming Foundations. Exercises. Easy 2.
# 5.- Greeting a User

# Write a program that will ask for user's name. The program 
# will then greet the user. If the user writes "name!" then 
# the computer yells back to the user.

print "What's your name? "
my_name = gets.chomp

if my_name.include?("!")
  my_name = my_name.upcase.split('!').shift
  puts "HI #{my_name}. WHY ARE WE SHOUTING TO EACH OTHER???"
else
  puts "Hello #{my_name}."
end

# LS Answer

# if name[-1] == '!'
#  name = name.chop
#  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#  puts "Hello #{name}."
# end