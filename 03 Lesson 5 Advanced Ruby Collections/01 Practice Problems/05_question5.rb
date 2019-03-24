# Lesson 5: Advanced Ruby Collections. Practice Problems
# Sorting, Nested Collections and Working with Blocks
# Question 5


# Given this nested Hash:

def age_male(hsh)
  male_age = 0
  hsh.each { |_, data| male_age += data["age"] if data["gender"] == "male" }
  male_age 
end


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

p age_male(munsters)

# figure out the total age of just the male members of the family.
