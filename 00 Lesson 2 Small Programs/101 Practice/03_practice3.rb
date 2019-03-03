def test(str)
  str += '?'
  str.downcase!
end

test_str = "Written Assessment"
test(test_str)

puts test_str #  "Written Assessment!" original variable is not affected by the method