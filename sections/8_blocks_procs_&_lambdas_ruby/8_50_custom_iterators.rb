# - We saw how to implement #each by looping over a collection and
#   using yield to call the block for each member of the collection.
# - We can define iterator methods on a collection class, like Array,
#   or we can add them to the Enumerable module, which is where shared 
#   enumerable methods like #reduce are defined. Enumerables works by
#   using the #each method which is defined on each of the classes
#   that include Enumerable.
# - Defining or redefining methods on the core classes is called
#   monkey-patching, and should generally be avoided if other 
#   people will use your code.

# ---

class Array
  def custom_each
    i = 0
    while i < self.length do
      yield self[i]
      i += 1
    end
    self
  end
end


[2, 3, 4].custom_each {|x| puts x**2}

(1..20).to_a.custom_each {|x| puts x if x.even?}

module Enumerable # included in classes with each
  def group_by_criteria
    yes_group = []
    no_group = []
    self.each do |x|
      if yield(x)
        yes_group << x
      else
        no_group << x
      end
    end  
    [yes_group, no_group]
  end
end

p (1..20).group_by_criteria {|x| x.even?}

# defined on Enumerable
# select
# find
# any?
# map

# map! (defined on Array)
