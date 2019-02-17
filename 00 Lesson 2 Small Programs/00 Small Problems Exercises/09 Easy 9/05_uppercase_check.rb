
def uppercase?(str)
  str == str.upcase
end


p uppercase?('t') #== false
p uppercase?('T') #== true
p uppercase?('Four Score') #== false
p uppercase?('FOUR SCORE') #== true
p uppercase?('4SCORE!') #== true
p uppercase?('') #== true

# Solving with REGEX

def uppercase2?(str)
  str !~ /[a-z]/
end

puts " "

p uppercase2?('t') #== false
p uppercase2?('T') #== true
p uppercase2?('Four Score') #== false
p uppercase2?('FOUR SCORE') #== true
p uppercase2?('4SCORE!') #== true
p uppercase2?('') #== true