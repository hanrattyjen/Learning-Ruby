# # 99 bottles of beer on the wall

n = 100
loop do 
	n -= 1
		puts "#{n} bottles of beer on the wall."
		puts "#{n} bottles of beer."
		puts "Take one down and what have you got?"
		puts "#{n-1} bottles of beer on the wall."
	break if n == 1
end
