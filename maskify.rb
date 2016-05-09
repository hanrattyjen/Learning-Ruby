# Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question 
# is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. 
# Instead, we mask it.

# Your task is to write a function maskify, which changes all but the last four characters into '#'.

# maskify('4556364607935616') # should return '############5616'


# get an input
puts "Please type input:"
input = gets.chomp
# count number of elements - split into array?

def maskify(input)
	array = input.split(//).reverse!
	flipped_array = []

	if array.length > 3       
		array.each_with_index { |element, index| 
			if index <= 3
				flipped_array << element
			else 
				flipped_array << "#"			
			end
			} 
			flipped_array.reverse!
			print flipped_array.map! { |s| "#{s}" }.join()

	else 
		puts input
	end
end

maskify(input)


def maskify(cc)
  # your beautiful code goes here
  cc.size <= 4 ? cc : "#" * (cc.length-4) + cc[-4..-1]
end


