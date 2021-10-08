# frozen_string_literal: true

# - We saw how to define class methods two ways:
#   `def self.method_name...end` vs
#   `class << self; def method_name...end; end`
# - if dave = Person.new, dave can receive the instance methods
#   of Person (or ots parent classes), whereas Person can receive
#   the class methods of Person(or its parents classes).
# - As a beginner Ruby programmer, you will use instance
#   methods a lot more often than class methods.

# ---

class Person
  def initialize(name)
    @name = name
  end

  attr_reader :name

  def introduce
    puts "Hi, I'm #{@name}"
  end
end

dave = Person.new('Dave')
tom = Person.new('Tom')

p dave, tom

tom.introduce

p Person.class

class Person
  def self.introduce
    puts "I'm the abstract concept of a person."
  end

  class << self
    def default_man
      new('Jonh Doe')
    end

    def default_woman
      new('Jane Doe')
    end
  end
end

person = Person.new('Anonymous')

person.introduce # calls the instance method

Person.introduce # call the class method

class Lawyer < Person
end

val = Lawyer.new('Val')

p val

val.introduce # inherited instance methods
Lawyer.introduce # inherited class methods

p Person.default_man

p Lawyer.default_woman
