def old_roman_numeral(num)

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
#split digit into array
digit = num.chars.map(&:to_i).reverse!

print digit

ROMAN_MAP.each { |key, value| 
	if (num == key)
		return value
	else
		break
	end
	puts "Roman numeral of #{num} is #{value}."
}

if digit(0) < 5
	puts "I" * number
elsif digit(0) == 5
	puts "V"
else 
	puts ("I"*(number-5)) + "X"
end

if digit(1) < 5
	puts "X" * number
elsif digit (1) == 5
	puts "L"
else
	puts ("X"*(number-5)) + "C"
end

if digit(2) < 5
	puts "C"
elsif digit(2) == 5
	puts "D"
else
	puts ("C"*(number - 5)) + "M"
end

	# To convert the integer to a Roman numeral, iterate over all the keys in the roman_mapping hash and 
	# divide the number by the keys. If the number is divisible by the current key in the iteration, append the roman numeral 
	# corresponding to the divisor to the result. After each iteration, the number is updated to equal the remainder 
	# from the division.

# old_roman_numeral(4) ---> IIII
# old_roman_numeral(2254) ---> MMCCLIV

# 26 = XXVI
# 	2 = X + X
# 	6 = V + I

# 50 = L

# 86 = LXXXVI
# 	80 = LXXX
# 	6 = VI

# 92 = XCII
# 	90 = XC
# 	2 = II

# 175 = CLXXV
# 	150 = CL
# 		100 = C
# 		50 = L
# 	25 = XXV

# 2254 = MMCCLIV
# 	2000 = MM
# 	200 = CC
# 	54 = LIV




