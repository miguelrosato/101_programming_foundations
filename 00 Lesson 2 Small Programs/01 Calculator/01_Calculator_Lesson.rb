# Initial psudocode
# Ask the User for two numbers
# Ask the user for operation to perform
# perform the operation on the two numbers
# output the result

# answer = gets 
# puts answer

# Other nomenclature 

# answer = gets()
# puts(answer)

# LS Nomenclature. The one we use:

# Answer = Kernel.gets()
# Kernel.puts(answer)

Kernel.puts("Welcome to Calculator!")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

# Kernel.puts(number1.inspect)
# Kernel.puts("The Number is: " + number1 + "!")

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

# Kernel.puts(number1 + " " + number2)

Kernel.puts("What Operation would you like to perform? 1) add 2) substract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
elsif operator == '4'
  result = number1.to_f() / number2.to_f()
end

Kernel.puts("The result is #{result}")