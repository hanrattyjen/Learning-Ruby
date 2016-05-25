def modern_roman_numeral(num)

end

 ROMAN_MAP = {      
 	  1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }

puts "Input number"
num = gets.chomp

roman_array = []

ROMAN_MAP.each { |key, value| 
		puts (num / key)
			# puts (num/key)
		# end 
	}


	# To convert the integer to a Roman numeral, iterate over all the keys in the roman_mapping hash and 
	# divide the number by the keys. If the number is divisible by the current key in the iteration, append the roman numeral 
	# corresponding to the divisor to the result. After each iteration, the number is updated to equal the remainder 
	# from the division.

