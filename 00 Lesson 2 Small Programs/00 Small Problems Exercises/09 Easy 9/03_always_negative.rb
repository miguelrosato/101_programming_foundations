
def negative(num)
  num > 0 ? -num : num
end

p negative(5) #== -5
p negative(-3) #== -3
p negative(0) #== 0

# an even more immediate solution, with the absolute number method .abs:

def negative2(num)
  -num.abs
end

p negative2(5) #== -5
p negative2(-3) #== -3
p negative2(0) #== 0