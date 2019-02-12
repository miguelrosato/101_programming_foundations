
def letter_case_count(str)
  letter_hash = {}

  letter_hash[:lowercase] = str.count("a-z")
  letter_hash[:uppercase] = str.count("A-Z")
  letter_hash[:neither] = str.count("^a-zA-Z")

  letter_hash
end

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }