# This is an attempt to make a calculator
number_1 = nil
number_2 = nil
operator = " "


loop do
  puts "Please introduce your First Number: "
  number_1 = Kernel.gets().chomp().to_f
  break if number_1.is_a? Float

  puts "Invalid Input. Please enter a Number"
end

loop do
  puts "Please introduce your Second Number:"
  number_2 = Kernel.gets().chomp().to_f
  break if number_2.is_a? Float

  puts "Invalid Input. Please enter a Number"
end

loop do
  puts "Please select your operation: (+, -, *, /) "
  operator = Kernel.gets().chomp()
  break if %w(+ - * /).include?(operator)

  puts "Invalid Input. Please enter a valid operator (+, -, *, /): "

end


case
when operator == "+" then puts number_1 + number_2
when operator == "-" then puts number_1 - number_2
when operator == "*" then puts number_1 * number_2
when operator == "/"
  if 
    number_2 == 0
    puts "Divisions by Zero 0 are not allowed!!!"
  else
    puts number_1 / number_2
  end
end


