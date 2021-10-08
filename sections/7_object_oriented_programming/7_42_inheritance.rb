# frozen_string_literal: true

# - We saw that if A < B, then we can say things like
#   "All As are Bs, but not all Bs are As".
# - In practical terms, this means that instances of A can use
#   methods defined on B, but instances of B cannots use methods
#   defined on A.
# - We can override instance methods of B on A, and use super to
#   preserver the original functionality of the method before
#   adding our own.

# ---
class Dog
end

fido = Dog.new
fido.methods

fido.class

fido.class.superclass

#       Object
#         V
# fido --> Dog

p fido.methods == Dog.instance_methods
p Dog.instance_methods == Object.instance_methods

class Dog
  def speak
    puts 'BARK'
  end
end

p Dog.instance_methods == Object.instance_methods

# All Dogs are objects, by not all Objects are Dogs.

# Defining a subclass of a Class
# Class that we inherit from is called the parent class
# or the superclass.

class Shape; end

class Rectangle < Shape; end

class Square < Rectangle; end

class Triangle < Shape; end

class IsocelesTriangle < Triangle; end

square = Square.new
square.is_a?(Square)
square.is_a?(Rectangle)
square.is_a?(Shape)

# Subclass is a specific kind of the superclass

# Classic Argument
# All Men Are Mortal
# Socrates is a Man:

# THEREFORE:
# Socrates is Mortal

class Mortal
  def initialize
    @alive = true
  end

  def die
    @alive = false
  end
end

class Man < Mortal; end

class Greek < Man; end

class Athenian < Greek; end

# socrates = Man.new
socrates = Athenian.new

p socrates.is_a? Mortal # Should return true

p socrates.class.ancestors
p socrates.class.ancestors.include?(Mortal)

p socrates
socrates.die
p socrates

class Pomeranian < Dog
  def speak
    super # call the method from the parent class
    puts 'yip!'
  end
end

charlie = Pomeranian.new
charlie.speak

fido.speak
