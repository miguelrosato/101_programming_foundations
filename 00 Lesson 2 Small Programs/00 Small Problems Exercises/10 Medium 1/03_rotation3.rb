def rotate_str(str)
  str[1..-1] + str[0]
end

def rotate_rightmost_digits(num, idx)
  str = num.to_s
  (str[0..-idx - 1] + rotate_str(str[-idx..-1])).to_i
end

def max_rotation(num)
  num.to_s.size.downto(2) {|idx| num = rotate_rightmost_digits(num, idx) }
  num
end

p max_rotation(735291) # == 321579
p max_rotation(3) # == 3
p max_rotation(35) # == 53
p max_rotation(105) # == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) # == 7_321_609_845

