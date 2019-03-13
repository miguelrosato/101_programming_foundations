# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

index = 0

flintstones.each_with_index do |name, idx|
  index = idx if name.include?("Be")
end

p index

# Easier solution

p flintstones.index { |name| name[0, 2] == "Be" }
