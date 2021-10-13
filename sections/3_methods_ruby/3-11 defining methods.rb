# frozen_string_literal: true

# - We learned to define a method using the def and end keywords,
#   with or without arguments.
# - We learned about explicit and implicit returns,
#   and how we can use an explicit return to exit a method early.
#   Anthing a method does aside from returning a value is called a side effect.
# - I touched on functions, which Ruby doesn't have,
#   but which we can simulate by defining methods on `main`

# ---

# puts("hello world") #called without a receiver
# Kernel.puts("hello squirrels")

# def (shortcut for define), end
# keywords are reserverd (can't use them as variable or method names)

def say_hello
  puts 'hello' # returns Nil
end

# refer to the method w/o calling it.
:say_hello
# say_hello

def greet(name)
  puts "Hello, #{name}!"
end

# greet("David")

def sum(x, y)
  x + y
end

# sum(3,4)
# sum(21,21)
# sum("hello ", "world")

# implicit return : return the (result of evaluating the) last expression
def product(x, y)
  x * y
end

puts product(12, 6)
product_of_12_22 = product(12, 22)
# p product_of_12_22
# avoid same naming for var and def.

# early return
def exit_early
  return 'La La La'
  puts 'This string never prints'
end

p exit_early

# All methods have a Return values

# Some methods have side effects :
# e.g. Outputting text to console.

# A function:
# Like a methods, but it belongs to no object.

# A pure fuction:
# A function that has no side effects.

# Even these methods defined at the top level
#  belong to an object (`main`)
# available everywhere
# call them without a receiver

# Programming Paradigms:
# Object-Oriented vs Functional
# Ruby is loop# but by defining methods at the top level,
# we can simulate fuctional programming.
