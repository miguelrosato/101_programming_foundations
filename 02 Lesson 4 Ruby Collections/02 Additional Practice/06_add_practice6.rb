# Amend this array so that the names are all shortened to just the first three characters:

# Non Destructive

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones2 = []

flintstones.each { |name| flintstones2 << name[0, 3] }

p flintstones2
p flintstones

# Destructive

flintstones.map! { |name| name[0, 3] }

puts " "
p flintstones