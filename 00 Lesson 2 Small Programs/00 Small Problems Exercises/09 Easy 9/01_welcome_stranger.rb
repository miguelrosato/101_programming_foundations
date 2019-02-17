
def greetings(arr, hash)
  "Hello, #{arr.join(' ')}! It is great to have a #{hash[:title]} #{hash[:occupation]}"
end




p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
p greetings(["Miguel", "Rosato", "Mattey"], { title: "Senior", occupation: "Completions Engineer"})


# A version that passes Rubocop

def greetings2(arr, hash)
  name = arr.join(" ")
  title = hash.values.join(" ")
  "Hello, #{name}! It is great to have a #{title}"
end


p greetings2(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
p greetings2(["Miguel", "Rosato", "Mattey"], { title: "Senior", occupation: "Completions Engineer"})


# Another version that passes rubocop

def greetings3(arr, hash)
  "Hello, #{arr.join(' ')}! It is great to have a " \
  "#{hash[:title]} #{hash[:occupation]}"
end




p greetings3(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
p greetings3(["Miguel", "Rosato", "Mattey"], { title: "Senior", occupation: "Completions Engineer"})
