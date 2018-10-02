# This is an attempt to make a calculator
number1 = nil
number2 = nil
operator = " "

def calculator(num1, num2, opr)
  case opr
  when "+" then num1 + num2
  when "-" then num1 - num2
  when "*" then num1 * num2
  when "/"
    if num2.zero?
      Kernel.puts("Divisions by Zero 0 are not allowed!!!")
    else
      num1 / num2
    end
  end
end



loop do
  Kernel.puts("Please introduce your First Number:")
  number1 = Kernel.gets().chomp().to_f
  break if number1.is_a? Float

  puts "Invalid Input. Please enter a Number"
end

loop do
  Kernel.puts("Please introduce your Second Number:")
  number2 = Kernel.gets().chomp().to_f
  break if number2.is_a? Float

  Kernel.puts("Invalid Input. Please enter a Number")
end

loop do
  puts "Please select your operation: (+, -, *, /) "
  operator = Kernel.gets().chomp()
  break if %w[+ - * /].include?(operator)

  Kernel.puts("Invalid Input. Please enter a valid operator (+, -, *, /): ")

end

Kernel.puts(calculator(number1, number2, operator))



