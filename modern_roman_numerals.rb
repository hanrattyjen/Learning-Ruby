def modern_roman_numeral(num)

end


puts "Input number"
num = gets.chomp

# split digit into array
digit = num.chars.map(&:to_i).reverse!
print digit

digit.each_with_index { |val, index|  
	
	}
if digit[0] < 4
  		# replace value with value*"I"
elsif digit[0] == 4
 		# replace value with "IV"
elsif digit[0] == 5
		# replace value with "V"
elsif digit[0] == 6
		# replace value with "VI"
elsif digit[0] == 9
		# replace value with "IX"
else 
		# replace value with "V" + (value-5)*"I"

end

if digit[1] < 4
		# replace value with value*"X"
elsif digit[1] == 4
		# replace value with "XL"
elsif digit [1] == 5
		# replace value with "L"
elsif digit[1] == 6
		# replace value with "LX"
elsif digit[1] == 9
		# replace value with "XC"
else 
		# replace value with "L" + (value-5)*"L"
end

if digit[2] < 4
		# replace value with value*"C"
elsif digit[2] == 4
		# replace value with "CD"
elsif digit [2] == 5
		# replace value with "D"
elsif digit[2] == 6
		# replace value with "DC"
elsif digit[2] == 9
		# replace value with "CM"
else 
		# replace value with "D" + (value-5)*"C"
end

if digit[3] > 0
	# replace value with value*"M"
end