movies = {
 "Top Gun" => 3   
}

puts "What would you like to do?"
choice = gets.chomp

case choice
when "add" 
    puts "Please enter a movie title"
    title = gets.chomp.to_sym
    puts "Please enter rating:"
    rating = gets.chomp.to_i
    if movies[title] .nil?
        movies[title] = rating
        puts "#{title} has been added with a rating of #{rating}."
    else
        puts "#{movie} is already in your library."
    end
when "update" 
    puts "Which movie would you like to update?"
    title = gets.chomp.to_sym
    if movies[title].nil?
        puts "#{title} is not in your library."
    else
        puts "Please enter new rating:"
        rating = gets.chomp.to_i
        movies[title] = rating
    end
when "display" 
    movies.each { |movie, rating|
        puts "#{movie}: #{rating}"
    }
when "delete" 
    puts "Which movie would you like to delete?"
    title = gets.chomp.to_sym
    if movies[title].nil?
        puts "#{title} is not in your library"
    else
        movies.delete(title)
    end
else 
    puts "Error! Please re-enter your choice or press e to exit."
    choice = gets.chomp
    if choice == "e"
        puts "Goodbye!"
    end
end