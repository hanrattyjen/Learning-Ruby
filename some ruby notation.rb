#.upto and .downto
# Write your code below!
"L".upto("P") { |letter| puts letter }


#.respond_to
# Rather than checking to see if our age variable is an integer, check to see if it will .respond_to? the .next method. 
# (.next will return the integer immediately following the integer it's called on, meaning 4.next will return 5.)
age = 26
age.respond_to?(:next)

# concatentation operator
alphabet = ["a", "b", "c"]
alphabet << "d" # Update me!

caption = "A giraffe surrounded by "
caption << "weezards!" # Me, too!

#Procs
# Remember when we told you that everything is an object in Ruby? Well, we sort of fibbed. Blocks are not objects, 
# and this is one of the very few exceptions to the "everything is an object" rule in Ruby.
# Because of this, blocks can't be saved to variables and don't have all the powers and abilities of a real object. 
# For that, we'll need... procs!
# You can think of a proc as a "saved" block: just like you can give a bit of code a name and turn it into a method, 
# you can name a block and turn it into a proc. Procs are great for keeping your code DRY, which stands for Don't Repeat Yourself. With blocks, you have to write your code out each time you need it; with a proc, you write your code once and can use it many times!

multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

(1..100).to_a.select(&multiples_of_3)

# The & is used to convert the cube proc into a block (since .collect! and .map! normally take a block). 
# We'll do this any time we pass a proc to a method that expects a block.
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new { |x| x.floor }

ints = floats.collect(&round_down)

Why bother saving our blocks as procs? There are two main advantages:

# Procs are full-fledged objects, so they have all the powers and abilities of objects. (Blocks do not.)
# Unlike blocks, procs can be called over and over without rewriting them. 
# This prevents you from having to retype the contents of your block every time you need to execute a particular bit of code.

# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
over_4_feet = Proc.new { |height| height >= 4 }

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

#
#
#
cube = Proc.new { |x| x ** 3 }
[1, 2, 3].map(&cube)
# [1, 8, 27]

def greeter
    yield
end

phrase = Proc.new { print "Hello there!" }
greeter(&phrase)  
# ---> "Hello there!"

# Unlike blocks, we can call procs directly by using Ruby's .call method. Check it out!
hi = Proc.new { puts "Hello!" }
hi.call

# You can also convert symbols to procs using that handy little &.
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
strings_array = numbers_array.map(&:to_s)
#  ---> ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]

# Lambdas are defined using the following syntax:
#  		lambda { |param| block }
# Lambdas are useful in the same situations in which you'd use a proc. 
# We'll cover the differences between lambdas and procs in the next exercise; in the meantime, 
# let's get a little practice in with the lambda syntax.

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |parameter| parameter.to_sym }

symbols = strings.collect(&symbolize)
# ---> [:leonardo, :donatello, :raphael, :michaelangelo]

# There are only two main differences between lambdas and Procs
# First, a lambda checks the number of arguments passed to it, while a proc does not. 
# This means that a lambda will throw an error if you pass it the wrong number of arguments, 
# whereas a proc will ignore unexpected arguments and assign nil to any that are missing.
# Second, when a lambda returns, it passes control back to the calling method; 
# when a proc returns, it does so immediately, without going back to the calling method.
		#  i. e. A lambda is just like a proc, only it cares about the number of arguments it gets 
		# and it returns to its calling method rather than returning immediately.

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
symbol_filter = lambda { |symbols| symbols.is_a? Symbol }

symbols = my_array.select(&symbol_filter)
#  --> [:kettles, :mittens, :packages]

# using the ages array. Create a variable called youngsters and set it equal to calling .select on ages, and pass in your under_100 proc to 
# filter for the ages that are less than one hundred. Remember to pass &under_100 to convert your proc to a block!
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new { |x| x < 100 }

youngsters = ages.select(&under_100)



