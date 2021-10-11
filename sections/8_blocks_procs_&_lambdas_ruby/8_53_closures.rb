=begin
- If we create a proc inside a method and save it to a variable,
we can still access the method's local variables indirectly 
thought the proc.
- If we run a proc-creator method more that once, each new proc
will have its onw set of method variables.
- However, if we create more than one proc in the same method,
those procs will have access to the same set of method variables.
=end


# procs and lambdas are closures

# they are functions which have access to the scope that they were define in.

def proc_maker
  counter = 1
  proc { counter = counter + 1}
end

incrementer = proc_maker()

# p incrementer.call()
# p incrementer.call()

def create_two_procs
  unique_variable = 0
  [
    proc { unique_variable += 1},
    lambda { unique_variable -= 1},
    lambda { unique_variable },
  ]
end

adder, subtractor, getter = create_two_procs()
p adder.call()
p adder.call()
p adder.call()

p subtractor.call()

p getter.call()
