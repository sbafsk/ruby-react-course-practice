# - Binary Mathematical operatos are actually methods called on the first number,
#   which take the second number as an argument. (the same goes for when we use them with Strings)
# - The print commands(p, puts, print) are actually methods that belong to the Kernel object (module)
#    and can be called from anywhere.
# - We omit parentheses after a method call when there is no argument, 
#   or with commonly used methods like the print methods.

# --- 

#addition
2 + 5 # calling #+ method on 2 with 5 as an arg
2.+(5) # same as above
5 + 2 # calling the #+ method on 5
5.+(2)

#concatenation
"Hello " + "World"
"Hello "+("World")

2.*(3)
-10./(41.0)
4.**(2)

# print methods
puts "Hello World"
puts("Hello World")

# Parentheses () are optional
# if you have an argument, you use them
# if you don't have any arguments, omit them

p 3.next # no need for parentheses to run
p 3.next() # same as above

# Methods belong to objects (receiver of the method)
# There are no exceptions

#puts 
#p
#print 

# we can call Kernel methods without a receiver
Kernel.puts("called with receiver")
# all objects have puts, p, print
# (as private methods)

#3.puts("hello") -> gives an error.

return_value = p 3 # return the object
return_value_puts = puts 3 # return nil
