animal = "dog"

loop do |animal|
  animal = "cat"
  break
end

puts animal # animal = dog, since there is a variabvle shadowing animal outside the scope and animal inside the scope are different variables. 



