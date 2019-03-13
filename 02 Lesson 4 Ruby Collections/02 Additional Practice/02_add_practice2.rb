# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

result = 0
ages.each_value { |val| result += val }
  
p result

# Another way, using only each:

result2 = 0
ages.each { |_, val| result2 += val }

p result2

# Option 3, using the inject method:

p ages.values.inject(:+)