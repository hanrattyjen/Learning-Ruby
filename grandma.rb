#grandma:
puts "Hey sonny, it's grandma. How are you?"


#me:
while (response = gets.chomp) != "BYE"
	if (response != response.upcase)
		puts "HUH?! SPEAK UP SONNY!"
	end
	if (response == response.upcase)
		puts "NO, NOT SINCE 19" + (rand(20) + 30).to_s + "!" #random number between 30 and 50
	end
end
puts "Goodbye Sonny!!"



