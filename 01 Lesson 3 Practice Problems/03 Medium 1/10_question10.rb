# Lesson 3: Practice Problems
# Medium 1
# Question 10

# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

p bar(foo)

# "no" since foo return "yes" and bar evaluates yes == no ? which is false
