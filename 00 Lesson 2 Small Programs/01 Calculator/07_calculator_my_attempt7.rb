# In this attempt I start associating strings to yml file
LANGUAGE = "en"
require "yaml"
MESSAGES = YAML.load_file("calculator_messages.yml")

def messages(message, lang = "en")
  MESSAGES[lang][message]
end

number1 = nil
number2 = nil
operator = " "

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_s unless num.is_a? String
  /\A[+-]?\d+(\.[\d]+)?\z/.match num
end

def input_number(num)
  loop do
    num = Kernel.gets().chomp()
    break if valid_number?(num) 

    prompt("invalid_input")
  end
  num
end

def valid_operator?(str)
  str.to_s unless str.is_a? String
  /\A[\+\-\*\/]\z/.match str
end

def input_operator(str)
  loop do 
    str = gets.chomp
    break if valid_operator?(str)

    puts "Invalid operator. Please try again"
  end
  str
end

prompt("welcome")

loop do   # This is the main loop to restart the program on user input
  prompt("first_number")
  number1 = input_number(number1)
  prompt("second_number")
  number2 = input_number(number2)

  prompt("operation")
  operator = input_operator(operator)

  case operator
  when "+"
    prompt("add")
    result = number1.to_f + number2.to_f
  when "-" 
    prompt("subtract")
    result = number1.to_f - number2.to_f
  when "*"
    prompt("multiply")
    result = number1.to_f * number2.to_f
  when "/"
    loop do
      if number2.to_f.zero?
        prompt("division_zero")
        loop do
          prompt("number2_again")
          number2 = input_number(number2)
          break if number2 != "0"
        end
      else
        break
      end
    end
    prompt("divide")
    result = number1.to_f / number2.to_f
  end

  prompt('result')
  Kernel.puts("=> #{result}")

  prompt("restart")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?("y")
end
