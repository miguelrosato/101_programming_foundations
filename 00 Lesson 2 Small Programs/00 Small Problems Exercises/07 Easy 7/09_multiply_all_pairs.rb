
def multiply_all_pairs(arr1, arr2)

result_arr = []

arr1.each do |num1|
  arr2.each do |num2|
    result_arr << num1 * num2
  end
end
result_arr.sort 
end




p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]


def multiply_all_pairs2(arr1, arr2)
  arr1.product(arr2).map { |num1, num2| num1 * num2 }.sort
end

p multiply_all_pairs2([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]


def multiply_all_pairs3(arr1, arr2)
  result = []
  arr1.each { |num1| arr2.each { |num2| result << num1 * num2 } }
  result.sort
end

p multiply_all_pairs3([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]