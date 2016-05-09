# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.
# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.


# input a number, eg, 10. store these in an array
puts "Give me a number:"
number = (gets.chomp.to_i) - 1
natural_numbers = Array.new(number) {|i| i+1 }
multiples_array = Array.new(0)

# find numbers that are multiples of 3 or 5
if natural_numbers.each { |i| 
	if  (i%3 == 0) || (i%5 == 0)
		multiples_array << i
	end } 
end

multiples_array.sort!
# sum the numbers
sum = 0
array_sum = multiples_array.inject(0) {|sum, i|  sum + i }
print array_sum