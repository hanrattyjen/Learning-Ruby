require 'date'
# determine how many years you have until retirement

# prompt for current age
puts "What is your current age?"
current_age = gets.chomp.to_i
# prompt for age you want to retire
puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

if (current_age > retire_age)
	puts "You can already retire dummy!"
else
	# find current year
	current_year = Time.now.year

	# display output
		
		# do current_age - retire_age
	can_retire = retire_age - current_age
	retire_year = current_year + can_retire
	puts "You have #{can_retire} years left until you can retire."
	puts "It is #{current_year}. You can retire in #{retire_year}."
end
