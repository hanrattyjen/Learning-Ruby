# convert euros to US dollars
	#Prompt for the amt of money in euros you have
	#Prompt for the current exchange rate of the euro
	#Print out the new amt in US dollars
	#formula for currency conversion is: 
			# amt.to = (amt.from x rate.from)/(rate.to)

		
puts "How many euros are you changing?"
euros = gets.chomp.to_f
puts "What is the exchange rate?"
euro_exchange_rate = gets.chomp.to_f

dollars = euros * ((euro_exchange_rate*100)/100)

puts "#{sprintf('%d', euros)} euros at an exchange rate of #{euro_exchange_rate} is #{sprintf('%0.2f', dollars.to_s)} US dollars."

-------------
class currency_converter

	def initialize(dollars)
		@dollars = dollars

	def amount_to
		@dollars = euros * ((euro_exchange_rate*100)/100)
	end

end