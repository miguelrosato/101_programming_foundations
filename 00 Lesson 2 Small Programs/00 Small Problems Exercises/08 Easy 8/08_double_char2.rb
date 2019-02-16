
def double_consonants(str)
  result = []
  str.split("").each do |char|
    if char =~ /[a-z]/i
      char =~ /[aeiou]/i ? result << char : result << char * 2
    else
      result << char
    end
  end
  result.join
end

p double_consonants('String') # == "SSttrrinngg"
p double_consonants("Hello-World!") # == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") # == "JJullyy 4tthh"
p double_consonants('') # == ""

# If we want to use only strings, instead of converting to array with split method:

def double_consonants2(str)
  result = ""
  str.each_char do |char|
    if char =~ /[a-z]/i
      char =~ /[aeiou]/i ? result << char : result << char * 2
    else
      result << char
    end
  end
  result
end

p double_consonants2('String') # == "SSttrrinngg"
p double_consonants2("Hello-World!") # == "HHellllo-WWorrlldd!"
p double_consonants2("July 4th") # == "JJullyy 4tthh"
p double_consonants2('') # == ""

# Finally we can reduce the REGEX expresion into a single one using && operator as follows:

def double_consonants3(str)
  result = ""
  str.each_char do |char|
    char =~ /[b-z&&[^eiou]]/i ? result << char * 2 : result << char
  end
  result
end

p double_consonants3('String') # == "SSttrrinngg"
p double_consonants3("Hello-World!") # == "HHellllo-WWorrlldd!"
p double_consonants3("July 4th") # == "JJullyy 4tthh"
p double_consonants3('') # == ""

# A more compact solution (giving a result variable) Resolves the Rubocop 
# conditional assignment issue:

def double_consonants4(str)
  result = str.chars.map do |char|
    char =~ /[b-z&&[^eiou]]/i ? char * 2 : char
  end
  result.join
end

p double_consonants4('String') # == "SSttrrinngg"
p double_consonants4("Hello-World!") # == "HHellllo-WWorrlldd!"
p double_consonants4("July 4th") # == "JJullyy 4tthh"
p double_consonants4('') # == ""

# An even more compact solution (giving no variable) Resolves the Rubocop 
# conditional assignment issue (and the problem becomes a one line solution):

def double_consonants5(str)
  str.chars.map { |char| char =~ /[b-z&&[^eiou]]/i ? char * 2 : char }.join
end

p double_consonants5('String') # == "SSttrrinngg"
p double_consonants5("Hello-World!") # == "HHellllo-WWorrlldd!"
p double_consonants5("July 4th") # == "JJullyy 4tthh"
p double_consonants5('') # == ""
