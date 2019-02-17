def twice(num)
  arr_num = num.to_s.chars
  num1 = arr_num[0..arr_num.length / 2 - 1].join.to_i
  num2 = arr_num[arr_num.length / 2..-1].join.to_i
  if arr_num.length.odd? || num1 != num2
    num * 2
  else
    num
  end
end


p twice(37) #== 74
p twice(44) #== 44
p twice(334433) #== 668866
p twice(444) #== 888
p twice(107) #== 214
p twice(103103) #== 103103
p twice(3333) #== 3333
p twice(7676) #== 7676
p twice(123_456_789_123_456_789) #== 123_456_789_123_456_789
p twice(5) #== 10

# This problem can be also solved using only strings as follows:

def twice2(num)
  str_num = num.to_s
  num1 = str_num[0..str_num.size / 2 - 1].to_i
  num2 = str_num[str_num.size / 2..-1].to_i
  if str_num.size.odd? || num1 != num2
    num * 2
  else
    num
  end
end

puts " " 

p twice2(37) #== 74
p twice2(44) #== 44
p twice2(334433) #== 668866
p twice2(444) #== 888
p twice2(107) #== 214
p twice2(103103) #== 103103
p twice2(3333) #== 3333
p twice2(7676) #== 7676
p twice2(123_456_789_123_456_789) #== 123_456_789_123_456_789
p twice2(5) #== 10