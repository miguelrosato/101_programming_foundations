# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# throw out the really old people (age 100 or older).

ages.select! do |key, val| 
  ages[key] if val < 100
end

p ages

# another way

ages2 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# throw out the really old people (age 100 or older).

ages2.delete_if { |_, val| val > 100 } 

puts " "

p ages2


# another way

ages3 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# throw out the really old people (age 100 or older).

ages3.each do |key, val|
  ages3.delete(key) if val > 100
end

puts " "

p ages3

# it is important to keep in mind that the three methods are destructive. In order to get a new hash, we can create a new variable and use a dedicated method to use the select method. It will help us keep the original hash:

ages4 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# throw out the really old people (age 100 or older).

ages5 = ages4.select do |key, val| 
  ages4[key] if val < 100
end
puts " "
p ages4
p ages5