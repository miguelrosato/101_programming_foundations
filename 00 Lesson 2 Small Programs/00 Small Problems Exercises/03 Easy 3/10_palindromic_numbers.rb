# Small Problems Exercises. Easy 3.
# 10.- Palindromic Number. Method

def palindromic_number?(num)
  num = num.to_s
  num == num.reverse
end

p palindromic_number?(34543) # == true
p palindromic_number?(123210) # == false
p palindromic_number?(22)     # == true
p palindromic_number?(5)      # == true
p palindromic_number?(001100)