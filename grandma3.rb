# deaf grandma

# random input
response = ()
bye_count = 0

puts "Hi sonny, it's grandma. How are you?"


while true	
	response = gets.chomp
	if response == response.downcase
		bye_count = 0
		puts "HUH? SPEAK UP SONNY"
	elsif response == "BYE"
		bye_count +=1
		puts "WHAT ARE YOU SAYING THERE?"
		if bye_count == 3
			puts "ALRIGHT FINE, TALK LATER."
			break
		end
	else
		puts "NO, NOT SINCE 19#{Random.new.rand(30...50)}!"
		bye_count = 0
	end
end

