# You can think of modules as being very much like classes, only modules can't create instances and can't have subclasses. 
# They're just used to store things!

module Circle

  PI = 3.141592653589793
  
  def Circle.area(radius)
    PI * radius**2
  end
  
  def Circle.circumference(radius)
    2 * PI * radius
  end
end

# It doesn't make sense to include variables in modules, since variables (by definition) change (or vary). 
# Constants, however, are supposed to always stay the same, so including helpful constants in modules is a great idea.

# Ruby doesn't make you keep the same value for a constant once it's initialized, but it will warn you if you try to change it. 
# Ruby constants are written in ALL_CAPS and are separated with underscores if there's more than one word.

# An example of a Ruby constant is PI, which lives in the Math module and is approximately equal to 3.141592653589793. 
# We created our own PI in the previous exercise, but don't worry: because they're in separate modules, Ruby knows to keep them separate.


# One of the main purposes of modules is to separate methods and constants into named spaces. This is called (conveniently enough) 
# namespacing, and it's how Ruby doesn't confuse Math::PI and Circle::PI.

#  DOUBLE COLON === Scope Resolution Operator
#  i.e. fancy way of saying it tells Ruby where you're looking for a specific bit of code.
#  e.g. Math::PI = ruby knows to look inside the Math module to get that PI, not any other PI.

# Some modules, like Math, are already present in the interpreter. Others need to be explicitly brought in, 
# however, and we can do this using require. We can do this simply by typing

require 'module'

# We want to use the Ruby Date module to show today's date, but we haven't required it yet!

require 'date'

puts Date.today 

# We can do more than just require a module, however. We can also include it!
# Any class that includes a certain module can use those module's methods!
# A nice effect of this is that you no longer have to prepend your constants and methods with the module name. 
# Since everything has been pulled in, you can simply write PI instead of Math::PI.

class Angle
  include Math
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine
#  ---> 0.5403023058681398 	

# When a module is used to mix additional behavior and information into a class, it's called a mixin. 
# Mixins allow us to customize a class without having to rewrite code!


 module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump
# ---> I jumped forward 2 feet!
# ---> I jumped forward 5 feet!

# Whereas include mixes a module's methods in at the instance level (allowing instances of a particular class to use the methods), 
# the extend keyword mixes a module's methods at the class level. This means that class itself can use the methods, as opposed to 
# instances of the class.

# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now
# ---> It's 11:26 AM (GMT).













