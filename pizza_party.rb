# prompt for number of people
puts "How many people?"
people = gets.chomp.to_i
if people.is_a? Integer
	else
		puts "No, a number."
	end
# prompt for number of pizzas
puts "How many pizzas?"
pizzas = gets.chomp.to_i
# prompt for number of slices per pizza
puts "How many slices per pizza?"
slices = gets.chomp.to_i

slices_per_person = (pizzas * slices) / people
leftover_slices = (pizzas * slices) % people

# def plural(people)
# 	if people > 1
# 		puts hello
# 	else
# 		puts no"
# end

# OUTPUT
if people > 1
	# plural people
	if pizzas > 1
		# plural pizzas
		puts "#{people} people with #{pizzas} pizzas."
	else
		# 1 pizza
		puts "#{people} people with #{pizzas} pizza."
	end
	if slices_per_person > 1
		# plural slices
		puts "Each person gets #{slices_per_person} slices of pizza."
	else 
		# 1 slice
		puts "Each person gets #{slices_per_person} slice of pizza."
	end
else	
	# 1 person
	if pizzas > 1
		# plural pizzas
		puts "#{people} person with #{pizzas} pizzas."
	else
		# 1 pizza
		puts "#{people} person with #{pizzas} pizza."
	end
	if slices_per_person > 1
		# plural slices
		puts "Each person gets #{slices_per_person} slices of pizza."
	else 
		# 1 slice
		puts "Each person gets #{slices_per_person} slice of pizza."
	end
end
if leftover_slices > 1
	puts "There are #{leftover_slices} leftover slices."
else
	puts "There is #{leftover_slices} leftover slice."
end

