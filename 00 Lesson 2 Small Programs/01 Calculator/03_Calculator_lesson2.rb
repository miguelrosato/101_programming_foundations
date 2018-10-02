# Lesson about refactoring the calculator

# First We add a Method that modify the appearance of our messages, so they have a better appearance in terminal. 

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0 
end

def operation_to_message(op)
  case op
  when "1"
    "Adding"
  when "2"
    "Subtracting"
  when "3"
    "Multiplying"
  when "4"
    "Dividing"
  end
end
prompt("Welcome to Calculator! Enter your name:")

name = ""

loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("make ure you enter a valid name")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do   #This is the main loop to restart the program on user input

  number1 = ""
  number2 = ""

  loop do   #This loop bring the variable number1 to the interior of a block. Now we declare externally. 
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt("Hmm... That doesn't look like a valid number")
    end
  end
  # Kernel.puts(number1.inspect)
  # Kernel.puts("The Number is: " + number1 + "!")

  loop do 
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt("Hmm... That doesn't look like a valid number")
    end
  end
  # Kernel.puts(number1 + " " + number2)
  # prompt("What Operation would you like to perform? 1) add 2) substract 3) multiply 4) divide")

  # MSG is a delimiter. We can use any set of letters we want. The string coloses as far as the delimiters match
  operator_prompt = <<-MSG  
    What Operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ""
  loop do 
    operator = Kernel.gets().chomp()
    if %w[1 2 3 4].include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end
  # if operator == '1'
  #  result = number1.to_i() + number2.to_i()
  # elsif operator == '2'
  #  result = number1.to_i() - number2.to_i()
  # elsif operator == '3'
  #  result = number1.to_i() * number2.to_i()
  # elsif operator == '4'
  #  result = number1.to_f() / number2.to_f()
  # end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when "1"
            number1.to_i() + number2.to_i()
           when "2"
            number1.to_i() - number2.to_i()
           when "3"
            number1.to_i() * number2.to_i()
           when "4" 
            number1.to_f() / number2.to_f()

  end


  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to loop again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")

end

prompt("Thank you for using the calculator. Good bye!")