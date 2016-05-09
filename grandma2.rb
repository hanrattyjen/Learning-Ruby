bye_count = 0

#grandma:
puts "Hey sonny, it's grandma. How are you?"


#me:
while true
	response = gets.chomp
	
	if (response == "BYE")
		bye_count = bye_count + 1
	else 
		bye_count = 0		#counter resetting to 0 
	end
	if bye_count >= 3		# 3 BYEs in a row
		puts "Goodbye Sonny!"
		break
	end
	if (response != response.upcase)
		puts "HUH?! SPEAK UP SONNY!"
	else
		puts "NO, NOT SINCE 19" + (rand(20) + 30).to_s + "!" #random number between 30 and 50
	end
end



