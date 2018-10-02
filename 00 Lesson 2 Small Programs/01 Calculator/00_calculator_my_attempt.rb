# This is an attempt to make a calculator
number_1 = nil
number_2 = nil
operator = " "


loop do
  Kernel.puts("Please introduce your First Number:")
  number_1 = Kernel.gets().chomp().to_f
  break if number_1.is_a? Float

  Kernel.puts("Invalid Input. Please enter a Number")
end

loop do
  Kernel.puts("Please introduce your Second Number:")
  number_2 = Kernel.gets().chomp().to_f
  break if number_2.is_a? Float

  Kernel.puts("Invalid Input. Please enter a Number")
end

loop do
  Kernel.puts("Please select your operation: (+, -, *, /)")
  operator = Kernel.gets().chomp()
  break if %w[+ - * /].include?(operator)

  Kernel.puts("Invalid Input. Please enter a valid operator (+, -, *, /):")
end

case operator
when "+" then Kernel.puts(number_1 + number_2)
when "-" then Kernel.puts(number_1 - number_2)
when "*" then Kernel.puts(number_1 * number_2)
when "/"
  if number_2.zero?
    Kernel.puts("Divisions by Zero 0 are not allowed!!!")
  else
    Kernel.puts(number_1 / number_2)
  end
end
