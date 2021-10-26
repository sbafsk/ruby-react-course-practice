# frozen_string_literal: true

# - Vanilla procs are defined with proc or Proc.new, lambdas are
# defined with `lambda{||}` or `->(){}` (stabby lambda syntax).
# We can check whether a prox is a lambda by calling #lambda? on it
# - Lambdas care how many arguments you give them. Vanilla procs don't
# - Return inside a vanilla proc returns from the outer method,
# return inside a lambda returnds from the lambda

procs = [
  # standard procs
  proc { |x, y| p x + y },
  proc { p 'hello squirrels' },
  # lamda (special type of proc)
  ->(x) { p x**2 },
  ->(name) { p "Hello #{name}" }
]

# puts procs

# p procs.map(&:lambda?)
# ^ same as v
# p procs.map {|x| x.lambda?}

# Lambdas behave more like methods

# 1 - ("vanilla") Proc don't care how many arguments you pass them

# procs.each {|proc| proc.call(2)}

# 2 - return behaves differentyl
# return works for lambdas (return from the lambda)
# but for non-lambda procs, return will return the enclosing method.

# @proc_1 = Proc.new {|phrase| return p phrase} # should throw error but isn't
@proc_1 = ->(phrase) { return p phrase }

def call_proc
  @proc_1.call('Hello')
  p 'did I get run?'
end

call_proc
