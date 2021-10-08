# frozen_string_literal: true

# - We recall that an instance_variable (@stuff) can only be accessed
#   from the same instace of a class, and each instance of that class has
#   its own separate copy of the @stuff instance variable.
#    if `dave = Person.new; val = person.new` dave's @stuff is different
#   from val's @stuff.
# - @@class_variables can be accessed from any instance of a class,
#   and there is only one copy of that variable.
# - We also so that class variables are inherited by subclasses, and
#   changing the value of the variable in the subclass changes the value
#   for the superclass as well.

# Scope

# Algebra test
# Section 1:
# Find x.
# 1. 5x = 25
# 2. 2 + x = 100
# 3. 65 - x = 37
# The scope of x is each question.

def sum_squares(x, y)
  x**2 + y**2
end

def square_sum(x, y)
  (x + y)**2
end

p sum_squares(2, 5)

p square_sum(3, 7)

p square_sum(2, 5)

# local variables can't be accessed from inside a different
# method than where they were defined
# we create a new scope for local variables when we define
# a method, create a blokc

# Instance varialbes can be accessed anywhere on the same objetc
# defined on self
# at top level, instance variables are defined on main

@bananas = 0

def pick_banana
  @bananas += 1
end

pick_banana

class Teacher
  def initialize
    @students = %w[timmy tanny]
    self
  end

  attr_accessor :students
end

# ms_jones = Teacher.new
# ms_jones.students

# Class variables are shared by all instances of a class

class Customer
  @@total_customers = 0

  def initialize
    @@total_customers += 1
    puts "#{@@total_customers} customers served."
    @cart = []
  end

  def add_to_cart(product)
    product.mark_as_sold
    @cart.push(product)
  end
end

Customer.new
Customer.new
Customer.new

class VIPCustomer < Customer
end

VIPCustomer.new
Customer.new

local_varialbe = "I'm local"
@instance_variable = 'I belong to the instance'
@@class_variable = 'I belong to the class'

# Principle of Least Access:
# good to make your variables have the smallest scope possible
