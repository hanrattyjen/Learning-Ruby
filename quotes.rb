#  prompt for a quote
puts "What is the quote?"
quote = gets.chomp
#  prompt for an author
puts "Who said it?"
author = gets.chomp
# display quotation and author 
puts "#{author} says '#{quote}'."
puts (author + " says '" + quote + "'.")