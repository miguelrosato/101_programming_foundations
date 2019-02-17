def buy_fruit(arr)
  arr.map { |sub_arr| ("#{sub_arr[0]} " * sub_arr[1]).split(" ") }.flatten
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) # ==
# ["apples", "apples", "apples", "orange", "bananas","bananas"]


# The Launch School answer, more elegant, using map, which both elements of the sub-arrays

def buy_fruit2(arr)
  arr.map { |fruit, quantity| [fruit] * quantity }.flatten
end

# NOTE: [fruit] ensures that the multilication result is an array of the same 
# word, and not a single string like "appleappleapple"

p buy_fruit2([["apples", 3], ["orange", 1], ["bananas", 2]]) # ==
# ["apples", "apples", "apples", "orange", "bananas","bananas"]

