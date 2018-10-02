# This is an attempt to make a calculator After the refactoring lesson using methods and loops

number1 = nil
number2 = nil
operator = " "

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_f != 0
end

def operation_to_message(op)
  case op
  when "+" then "Adding"
  when "-" then "Subtracting"
  when "*" then "Multiplying"
  when "/" then "Dividing"
  end
end


prompt("Welcome to Calculator Ruby App!!!")

loop do   # This is the main loop to restart the program on user input

  loop do
    prompt("Please introduce your First Number:")
    number1 = Kernel.gets().chomp()
    break if valid_number?(number1) 

    prompt("Invalid Input. Please enter a Number")
  end



  loop do
    prompt("Please introduce your Second Number:")
    number2 = Kernel.gets().chomp()
    break if valid_number?(number2)

    prompt("Invalid Input. Please enter a Number")
  end


  loop do
    prompt("Please select your operation: (+, -, *, /) ")
    operator = Kernel.gets().chomp()
    break if %w[+ - * /].include?(operator)

    prompt("Invalid Input. Please enter a valid operator (+, -, *, /):")

  end

  case operator
  when "+"
    result = number1.to_f + number2.to_f
  when "-" 
    result = number1.to_f - number2.to_f
  when "*"
    result = number1.to_f * number2.to_f
  when "/"
    loop do
      if number2.to_f.zero?
        prompt("Divisions by Zero 0 are not allowed!!!")
        loop do
          prompt("Please enter Number2 Again: ")
          number2 = Kernel.gets().chomp()
          break if valid_number?(number2)

          prompt("Invalid Input. Please enter a Number different than 0")
          end
        result = number1.to_f / number2.to_f
        else
        result = number1.to_f / number2.to_f
        break
        end
      end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")
  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to loop again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end