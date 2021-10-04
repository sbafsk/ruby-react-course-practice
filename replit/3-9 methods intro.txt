# - A method is a piece of code that belongs to an object, or something an object 'knows how to do'. 
#   When we call a method on an object, the object is called the 'receiver' of the method.
# - A return value is what we get back when we call a method on an object.
#   We can save it to a variable or ouput it to the console.
# - Methods take arguments, which affect what the methods does.
#   The method also behaves differently depending on what object it is called on,
#   so the receiver is also like an argument.

# ---

# Methods
# Something an object can do.
# we can ask the object to do a method like this:

"Cowboy".reverse
# cowboy is the receiver of the method #reverse
# we are calling/running/invoking the method 
	#reverse on "Cowboy"

3.next # 4
stooges = 3
stooges.next

#puts "batman".upcase # return "BATMAN"

return_value = "Hello World".swapcase
#puts return_value

# Methods can take arguments/input/parameters

p "Hello Worlds".include?("Hell") # return true
puts "Hello World".insert(6, "Beautiful ")
