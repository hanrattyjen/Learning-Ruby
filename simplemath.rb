#  promopt for 2 numbers
	#  convert them to integers
puts "What is the first number?"
number1 = gets.chomp.to_i
puts "What is the second number?"
number2 = gets.chomp.to_i
#  Print the sum, difference, product, quotient
sum = number1 + number2
difference = number1 - number2
product = number1 * number2
quotient = number1/number2

puts "#{number1} + #{number2} = #{sum}\n#{number1} - #{number2} = #{difference}\n#{number1} * #{number2} = #{product}\n#{number1} / #{number2} = #{quotient}"
