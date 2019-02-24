
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end



p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) #== ['b', 'c', 'a']
p rotate_array(['a']) #== ['a']

x = [1, 2, 3, 4]
p rotate_array(x) # == [2, 3, 4, 1]   # => true
p x # == [1, 2, 3, 4]                 # => true


def rotate_str(str)
  str[1..-1] + str[0]
end



p rotate_str("Hello World") #== [3, 5, 2, 9, 1, 7]
p rotate_str("Miguel Rosato") #== ['b', 'c', 'a']
p rotate_str("Launch School") #== ['a']
