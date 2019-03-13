
def select_fruit(hsh)
  result_hash = { }
  hsh.each do |key, val|
    result_hash[key] = val if hsh[key] == "Fruit"
  end
  result_hash
end

def general_select(hsh, value)
  result_hash = {}
  hsh.each do |key, val|
    result_hash[key] = val if hsh[key] == value
  end
  result_hash
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
puts " "
p general_select(produce, 'Vegetable')
p general_select(produce, 'Fruit')




def double_numbers(arr)
  arr.map { |i| i * 2 }
end

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p double_numbers(my_array)
p my_array


def double_odd_numbers(arr)
  result = []
  counter = 0
  (0...arr.size).each do |idx|
    if idx.odd?
      result << arr[idx] * 2
    else
      result << arr[idx]
    end
  end
  result
end

puts " "

p double_odd_numbers(my_array)
p my_array


def multiply(arr, num)
  arr.map { |i| i * num }
end

puts " "
p multiply(my_array, 3)
p my_array

def select_letter(str, ltr)
  result_str = ""
  str.each_char do |chr|
    result_str << chr if chr == ltr
  end
  result_str
end

question = 'How many times does a particular character appear in this sentence?'

puts " "

p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""

puts " "

p select_letter(question, 'a').size # => 8
p select_letter(question, 't').size # => 5
p select_letter(question, 'z').size # => 0