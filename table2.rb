
title = ['Chapter 1: Getting Started','Chapter 2: Numbers','Chapter 3: Letters']
pages = ['Page 1','page 9','page 13']

linewidth = 30
center = linewidth / 2 

puts
header = '*Table of Contents*'
puts header.center linewidth
puts

title.zip(pages) do |title, pages|
     puts "#{title.ljust(center)} #{pages.rjust(center)}"
end 