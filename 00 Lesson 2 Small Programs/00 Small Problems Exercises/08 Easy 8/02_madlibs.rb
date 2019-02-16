print "Enter a noun: "
noun = gets.chomp

print "Enter a verb: "
verb = gets.chomp

print "Enter an adjective: "
adjective = gets.chomp

print "Enter an adverb: "
adverb = gets.chomp

sentence1 = "Do you #{verb} with #{adjective} #{noun} #{adverb}?"
sentence2 = "The #{adjective} #{noun} will #{verb} #{adverb}"
sentence3 = "Will you #{verb} with #{adjective} #{noun} #{adverb}?"

puts [sentence1, sentence2, sentence3].sample