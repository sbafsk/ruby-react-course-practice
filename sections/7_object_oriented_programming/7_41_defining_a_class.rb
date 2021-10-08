# frozen_string_literal: true

# - Classdefinition syntax looks a lot like method definition,
#   except we use the `class` keyword instead of the `def` keywordm
#   and our class names should be capitalized, unlike methods names.
# - Inside the class...end keywords, we define methods just like
#   we do on the main object, and thes methods are available
#   to instances of the class.
# - We've looked at instance variables, which are coped to the object,
#   unlike local variables, which can't be accessed from other methods.
#   We saw how to define getter and setter methods,
#   or use the attr_(accessor/reader/writer) shortcuts.

# ---

# class definition

# Capitalized
class Dog
  # define instance methods
  # attr_reader :name
  # attr_writer :name
  attr_accessor :name # attr_reader + attr_writter

  # if you can avoid using a getter or specially a setter,
  # you should do that.

  # define initialize method
  def initialize(name)
    # save the arguments to instance variables
    @name = name
  end

  def speak
    puts 'BARK!'
    puts "Excuse me, I'm #{@name}"
  end

  # we use attr_reader
  # def name
  #   @name
  # end
  # we use attr_writer
  # def name(new_name)
  #   @name = new_name
  # end
end

@name # defined on main object, not the @name from Dog class.

fido = Dog.new('Fido') # use .new class method to instantiate the class

# p fido.methods.sort

fido.speak

rex = Dog.new('Rex')
rover = Dog.new('Rover')

# Accessors :
# getters let you read an instance variable
# setters let you change an instance variable

p rex.name
rex.name = 'T-Rex'
p rex.name
