# This is an attempt to make a calculator
number_1 = nil
number_2 = nil
operator = " "

def calculator(num1, num2, opr)

  case
  when opr == "+" then num1 + num2
  when opr == "-" then num1 - num2
  when opr == "*" then num1 * num2
  when opr == "/"
    if 
      num2 == 0
      Kernel.puts("Divisions by Zero 0 are not allowed!!!")
    else
      num1 / num2
    end
  end

end



loop do
  Kernel.puts("Please introduce your First Number:")
  number_1 = Kernel.gets().chomp().to_f
  break if number_1.is_a? Float

  puts "Invalid Input. Please enter a Number"
end

loop do
  Kernel.puts ("Please introduce your Second Number:")
  number_2 = Kernel.gets().chomp().to_f
  break if number_2.is_a? Float

  Kernel.puts("Invalid Input. Please enter a Number")
end

loop do
  puts "Please select your operation: (+, -, *, /) "
  operator = Kernel.gets().chomp()
  break if %w(+ - * /).include?(operator)

  Kernel.puts("Invalid Input. Please enter a valid operator (+, -, *, /): ")

end

Kernel.puts(calculator(number_1, number_2, operator))



