# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# value is each string element of the original array. For the first iteration, value = "ant". So, the key of the new hash object becomes value[0], which is the first character of the string 'ant' which is equal to a. then the value of the key 'a' is 'ant'. The result hash is:

# {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}