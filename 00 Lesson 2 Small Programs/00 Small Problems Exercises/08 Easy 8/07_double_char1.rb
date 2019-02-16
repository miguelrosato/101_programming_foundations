
def repeater(str)
  str.split("").map {|char| char * 2 }.join
end

p repeater('Hello') # == "HHeelllloo"
p repeater("Good job!") # == "GGoooodd  jjoobb!!"
p repeater('') # == ''

def repeater2(str)
  str.chars.map {|char| char * 2 }.join
end

p repeater2('Hello') # == "HHeelllloo"
p repeater2("Good job!") # == "GGoooodd  jjoobb!!"
p repeater2('') # == ''