
def triangle(num)
  space = " "
  star = "*"
  (1..num).each do |i|
    puts "#{space * (num - i)}#{star * i}"
  end
end


triangle(5)
triangle(9)
triangle(20)


