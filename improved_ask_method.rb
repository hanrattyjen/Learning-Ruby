def ask question
	while true
		puts question
		reply = gets.chomp.downcase

		return true if reply == "yes"
		return false if reply == "no"
		puts "Please answer yes or no."
	end
end

ask 'Do you like eating cheese?'
pizza = ask "Do you eat pizza?"
puts pizza