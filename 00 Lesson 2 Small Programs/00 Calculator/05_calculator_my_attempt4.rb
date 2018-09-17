number1 = nil
number2 = nil
operator = " "

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num
end

def operation_to_message(op)
  case op
  when "+" then "Adding"
  when "-" then "Subtracting"
  when "*" then "Multiplying"
  when "/" then "Dividing"
  end
end

def input_number(num)
  loop do
    num = gets.chomp
    break if valid_number?(num) 

    prompt("Invalid Input. Please enter a Number")
  end
  num
end



prompt("Welcome to Calculator Ruby App!!!")

loop do   #This is the main loop to restart the program on user input
  prompt("Please introduce your First Number:")
  number1 = input_number(number1)
  prompt("Please introduce your Second Number:")
  number2 = input_number(number2)


  loop do
    prompt("Please select your operation: (+, -, *, /) ")
    operator = gets.chomp
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
          prompt("Please enter Number2 Again different than 0: ")
          number2 = input_number(number2)
          break if number2 != "0"
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