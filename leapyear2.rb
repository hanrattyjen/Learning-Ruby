#asks for starting year
puts "Give me a starting year"
start_year = gets.chomp.to_i
#asks for ending year
puts "Give me an ending year"
end_year = gets.chomp.to_i

puts "Look - these years are leap years:"

(start_year..end_year).each do |year|
	next if year%4 != 0  # i.e skip it
	next if year%100 == 0 && year%400 != 0  # i.e. skip it
	puts year
end