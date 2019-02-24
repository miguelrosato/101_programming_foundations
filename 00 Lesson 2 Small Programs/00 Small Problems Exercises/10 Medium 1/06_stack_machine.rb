#require "pry"

def minilang(str)
  register = nil
  stack = []
  str.split.each do |val|
    case val
    when "PUSH"   then stack.push(register)
    when "ADD"    then register += stack.pop
    when "SUB"    then register -= stack.pop
    when "MULT"   then register *= stack.pop
    when "DIV"    then register /= stack.pop
    when "MOD"    then register %= stack.pop
    when "POP"    then register = stack.pop
    when "PRINT"  then puts register.to_s
    else register = val.to_i
    end
  end
end




minilang('PRINT')
# 0

puts " "

minilang('5 PUSH 3 MULT PRINT')
# 15

puts " "

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

puts " "

minilang('5 PUSH POP PRINT')
# 5

puts " "

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

puts " "

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

puts " "

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

# puts " "

minilang('-3 PUSH 5 SUB PRINT')
# 8

puts " "

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# Further Exploration
puts " "

minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')

# Further Exploration. Avoiding Errors

def stack_pop(stack)
  if stack.empty? 
    puts "Your Stack is Empty. Please add a value before attempting to operate!"
  else
    stack.pop
  end
end

def minilang2(str)
  register = nil
  stack = []
  str.split.each do |val|
    case val
    when "PUSH"   then stack.push(register)
    when "ADD"    then register += stack_pop(stack)
    when "SUB"    then register -= stack_pop(stack)
    when "MULT"   then register *= stack_pop(stack)
    when "DIV"    then register /= stack_pop(stack)
    when "MOD"    then register %= stack_pop(stack)
    when "POP"    then register = stack_pop(stack)
    when "PRINT"  then puts register.to_s
    else 
      if val =~ /\d/
        register = val.to_i
      else
        puts "Invalid command #{val}!!!" 
        exit
      end
    end
  end
end

puts " "

minilang2('3 PUSH MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')