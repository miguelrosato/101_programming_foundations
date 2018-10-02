# 101 Programming Foundations. Exercises. Easy 2.
# 2.- How Big is the Room

# Build a program that asks a user for the length and width 
# of a room in meters and then displays the area of the room 
# in both square meters and square feet.

SQM_TO_SQFT = 10.7639

def area(lenght, width)
  lenght * width
end

puts "Please enter the lenght of the room in meters:"
lenght_m = gets.chomp.to_f

puts "Please enter the width of the room in meters:"
width_m = gets.chomp.to_f

area_m = area(lenght_m, width_m).round(2)

area_ft = area_m * SQM_TO_SQFT.round(2)

puts "The area of the room is #{area_m} square meters (#{area_ft} square feet)"
