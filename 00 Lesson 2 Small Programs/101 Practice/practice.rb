# Typical Questions 101

animal = "dog"

loop do
  animal = "cat"
  toy = "ball"
  break
end


puts animal # Variable assigned in the outer scope is available inside the block, so animal == cat
puts toy # throws an error, since the variable toy is only available in the inner scope
