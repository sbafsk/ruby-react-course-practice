# frozen_string_literal: true

# - An object has state(values) and behaviour(methods)
# - A class is the template or abstract idea of an object.
# - The methods we can call on an object are determined by its class.

# Everything Is An Object

# An object has state (a value or values)

test_string = 'cowboy'
p test_string.reverse!
p test_string

# Objects have behaviours (methods)

p test_string.methods == 'another string'.methods # true

# Members of the same class have the same methods

p test_string.class # String

# test_string has the instance methods of String
# test_string is an instance of String
# anything that a string can do, test_string can do

String # name of the class
# capitalized because class names are constans,
# (as oppossed to variables)

p 3.class # Fixnum
p 4.5.class # Float
p [].class # Array

p new_hash = {} # .new is a class method

p new_hash.methods == Hash.methods # false
p new_hash.methods == Hash.instance_methods # false

# Instances : the especific object.
# Classes : template for that type of object.
