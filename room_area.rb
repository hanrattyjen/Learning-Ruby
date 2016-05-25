# prompt for length and width of room in feet
puts "Please enter length of room in feet:"
length = gets.chomp.to_i
puts "Please enter width of room in feet:"
width = gets.chomp.to_i
# formula for area in feet
area_feet = length * width
# formula for area in meters
area_meters = area_feet * 0.09290304

puts "You entered dimensions of #{length} feet by #{width} feet."
puts "The area is:"
puts "#{area_feet} square feet"
puts "#{area_meters} square meters"


