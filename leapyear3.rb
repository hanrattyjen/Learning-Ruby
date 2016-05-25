puts "Please enter starting year:"
start_year = gets.chomp.to_i

puts "Please enter final year:"
end_year = gets.chomp.to_i

next_leap_year = (start_year + (4-(start_year%4)))

puts start_year
until next_leap_year >= end_year 
	puts next_leap_year
	next_leap_year += 4
end


