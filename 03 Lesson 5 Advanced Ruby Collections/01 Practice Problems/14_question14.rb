# Lesson 5: Advanced Ruby Collections. Practice Problems
# Sorting, Nested Collections and Working with Blocks
# Question 14

# Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

def hash_to_array(hsh)
  result_arr = []

  hsh.each do |key, sub_hsh|
    result_arr << sub_hsh[:colors].map(&:capitalize) if sub_hsh[:type] == "fruit"
    result_arr << sub_hsh[:size].upcase if sub_hsh[:type] == "vegetable"
  end
  result_arr
end


my_hash = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

p hash_to_array(my_hash)

# => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]