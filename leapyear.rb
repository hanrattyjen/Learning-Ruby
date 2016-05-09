#asks for starting year
puts "Give me a starting year"
start_year = gets.chomp.to_i
#asks for ending year
puts "Give me an ending year"
end_year = gets.chomp.to_i

puts "Look! These years are leap years:"
year = start_year

while year <= end_year
	if year%4 == 0  # then it is a leap year
		if year%100 != 0 || year%400 == 0
			puts year
		end
	end

	year = year + 1
end
	