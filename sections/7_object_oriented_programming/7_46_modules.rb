# - Modules let us handle overlapping categories. For example, an
#   Electriccar is a type of Car, and ElectricScooter is a type of
#   Motorcycle, but they are both Electric. So maybe Electric is a module.
# - Modules get included in the ancestor chain of a class,
#   between the class an its parent.
# - Modules explain how we can call Kernel methods (like
#    puts, gets, rand) from anywhere without a receiver. This is the other
#   way we might use modules, to create a package of helpful methods
#   that we can include in whatever classes we want to use them in.

# ---

class Engineer
  def do_math
    puts "numbers!"
  end
end

class Designer
  def make_pretty
    puts "looks nicer"
  end
end

module ManagementTraining
  def yelling
    puts "GET BACK TO WORK"
  end
end
# we can't instance a module

# steve = Manager.new # fail
# p steve

# Ruby doesn't allow classes to inherit from more than
#  one parent class
# Instead, we can use modules (mixins)

class LeadEngineer < Engineer
  include ManagementTraining
  # Let LeadEngineer use the methods defined in the
  # ManagementTraining Module
end

class LeadDesigner < Designer
  include ManagementTraining
end


lead_eng = LeadEngineer.new
lead_des = LeadDesigner.new

lead_eng.do_math
lead_des.make_pretty
lead_eng.yelling
lead_des.yelling

p(lead_eng.class.ancestors)


# Methods in disguise?

# Kernel.puts("hello")

puts("hello") # Kernel module is included in object