def center_of(str)
  str.size.odd? ? str[str.size / 2] : str[str.size / 2 - 1..str.size / 2]
end

p center_of('I love ruby') # == 'e'
p center_of('Launch School') # == ' '
p center_of('Launch') # == 'un'
p center_of('Launchschool') # == 'hs'
p center_of('x') # == 'x'

# Another way, using the string notation for index, and number of elements [idx, num]

def center_of2(str)
  str.size.odd? ? str[str.size / 2] : str[str.size / 2 - 1, 2]
end

p center_of2('I love ruby') # == 'e'
p center_of2('Launch School') # == ' '
p center_of2('Launch') # == 'un'
p center_of2('Launchschool') # == 'hs'
p center_of2('x') # == 'x'