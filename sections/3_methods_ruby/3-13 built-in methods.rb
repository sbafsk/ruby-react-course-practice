# - We can have an object list its methods for us 
#   by calling #methods (object.methods).
# - We have the #to_<something> methods that convert/coerce
#   objects to a particular type to prevent type errors.
# - ! indicates a dangerous side effect like mutating an object,
#   and ? means that a methods return a boolean.

# ---

vigilante = "batman"

"batman".reverse
"batman".upcase

# Ask an object to list its methods
# puts vigilante.methods.sort

# naming conventions

# to_something:
# !
# ?

# type conversion
# to_<something>

p 3.to_s # to string
p "3".to_i # to integer
p "3".to_f # to float

p "120 bananas".to_i # return the number found
p "There are four lights".to_i # return 0

# print "x = "
# x = gets.chomp

# puts "x + 5 is #{x.to_i.+(5)}"

# Type Errors can be fixed with to_i to_f to_s etc.

# ! Dangerous methods
# If you see method_name! then there's 
# a safe version: method_name

p vigilante
p vigilante.upcase!

puts "let's look the original string: #{vigilante}"

# Dangerous methods have side effects
# eg: mutating object value.

# ? methods return a boolean

# Booleans methods returns True or False

#p.vigilante == nil
p vigilante.nil? # if vigilante != nil # false

p nil.nil? # true

p vigilante.include?("B")
p vigilante.include?("b")

p vigilante.empty?
