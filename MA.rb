name = "Jordan"

def upper(string)
  string.upcase
end

def lower(string)
  string.downcase
end

def random_name
  ["Jordan", "Nikesh"].sample
end

def random_case(string)
  [upper(string), lower(string)].sample
end

def random_both
	random_case(random_name)  
end

# We would like to have random_name output at random either all in capitals or all in lowercase


puts "Hello #{random_both}"