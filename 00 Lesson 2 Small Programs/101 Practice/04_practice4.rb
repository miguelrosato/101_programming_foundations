def scramble(str1, str2)
str1_array = str1.chars
str2_array = str2.chars
str2_array.all? { |letter| str2_array.count(letter) <= str1_array.count(letter) }
end

p scramble('rkqodlw','world') # == true
p scramble('cedewaraaossoqqyt','codewars') # == true
p scramble('katas','steak') # == false
p scramble('scriptjava','javascript') # == true
p scramble('scriptingjava','javascript') # == true

def scramble2(str1, str2)
  str2.chars.each do |char|
    return false if str2.count(char) > str1.count(char)
  end
  true
end

puts " "
p scramble2('rkqodlw','world') # == true
p scramble2('cedewaraaossoqqyt','codewars') # == true
p scramble2('katas','steak') # == false
p scramble2('scriptjava','javascript') # == true
p scramble2('scriptingjava','javascript') # == true