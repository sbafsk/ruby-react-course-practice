# - We create a prox using either `Prox.new` or the #proc method and
#   passing a block. We can save it to a variable and run it later using
#   the #call method.
# - We can define methods which take procs as arguments. A method
#   can only take on block, but t can take as many procs as we want.
# - We can convert a proc to a block (and vice versa) by using the &
#   symbol in front of them. So we can pass a proc to a method that
#   expects a block, e.g #map. We can also have a method pass a block 
#   to another method.

# ---

# Everything Is An Object

# Blocks are not objects
# but Procs are
# work in all versions of Ruby
cube = Proc.new {|x| x**3}

# works differently in older versions of Ruby
# (< 1.9)
square = proc {|x| x**2}

p cube.call(2)
p cube.(3)

def method_with_proc(p1, arg)
  p p1.call(arg)
end

method_with_proc(cube, 4)

def method_with_procs(p1, arg1, p2, arg2)
  p p1.call(arg1)
  p p2.call(arg2)
end


method_with_procs(cube, 12, square, 11)

# Use as  a proc as a block
# & to convert proc <-> block
# {|x| x.even?} is the same as &:even

(1..10).map(&cube)
(1..10).select(&:even?) 

odd = :odd?.to_proc
# {|x| x.odd?}
(1..11).map(&odd)

def takes_a_block(&block)
  3.times(&block)
end

takes_a_block {|x| puts "hello joe"}
