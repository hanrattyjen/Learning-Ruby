puts "Give me a word"
text = gets.chomp

words = text.split

frequencies = Hash.new(0) # 0 =  default value, specifying a default

words.each do |words|
    frequencies[words] +=1
end

frequencies = frequencies.sort_by { |words, freq| freq }
frequencies.reverse!

frequencies.each { |words, freq|
    puts "#{words} #{freq}"
}
