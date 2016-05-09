 # A class is just a way of organizing and producing objects with similar attributes and methods.

 # e.g. 
 # class NewClass

 # end
 # Our NewClass has the ability to create new Ruby objects of class NewClass (just like "Hello!" is a String and 
 # 	4 is a Fixnum). 
 # By convention, class names start with a capital letter and use CamelCase instead of relyingonunderscores.
# You can think of initialize as the function that "boots up" each object the class creates.
# In Ruby, we use @ before a variable to signify that it's an instance variable. This means that the variable is attached 
# to the instance of the class. 
class Car
  def initialize(make, model)
    @make = make
    @model = model
  end
end

kitt = Car.new("Pontiac", "Trans Am")
# This creates an instance, kitt, of the class Car. kitt has his own @make ("Pontiac") and @model ("Trans Am"). 
# Those variables belong to the kitt instance, which is why they're called instance variables.
# as above, we can create an instance of a class just by calling .new on the class name.

# INSTANCE VARIABLES - @variable_name
# CLASS VARIABLES - @@variable_name
	# Class variables are attached to entire classes, not just instances of classes,
# GLOBAL VARIABLES - $variable_name from inside a method (OR just define the variable outside of any method or class)
# ----------------------------
class Person
  # Set your class variable to 0 on line 3
  @@people_count = 0
  
  def initialize(name)
    @name = name
    # Increment your class variable on line 8
    @@people_count += 1
  end
  
  def self.number_of_instances
    # Return your class variable on line 13
    return @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"
#  ----> Number of person instances : 2