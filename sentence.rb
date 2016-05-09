sentence = []
# Type as many words as we want 
puts "Please type one word per line, followed by Enter. If you press Enter twice, program will exit."

	# one word per line, continuining until we just press enter on an empty line
while true
	word = gets.chomp
	if word == ""
		break
	end

sentence.push word
end
# Repeats the words back in alphabetical order
puts "Here they are sorted:"
puts sentence.sort


