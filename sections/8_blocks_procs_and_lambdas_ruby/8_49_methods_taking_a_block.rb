# frozen_string_literal: true

# - We saw that if we use the 'yield' keyword inside a method
#   definition, the method will call the block it was give.
# - Yield throws an error if no block was give, so if we want to
#   make the block optional, we can use block_given? to check if
#   a block was given.
#   We can call the block more than once inside the method, but
#   we can't pass more than one block to a method.

# ---

p(1..10).map { |x| x**2 }

def square(x)
  x**2
end

p square(3)
p square(7)
p square(100)

def do_something_to(x)
  yield(x) if block_given?
end

do_something_to(3) { |x| p x**2 }
do_something_to(12) { |x| p "I love #{x}" }
do_something_to(100) { |x| p x }

def print_result(x)
  p yield(x)
end

print_result(3) { |x| x**2 }

def sum_results(x, y)
  x_result = yield(x)
  y_result = yield(y)
  x_result + y_result
end

p sum_results(2, 3) { |x| x**2 }
p sum_results(2, 3) { |x| x**x }

def call_block_with_3_and_5
  p yield(3, 5)
end

call_block_with_3_and_5 { |x, y| x**y }
call_block_with_3_and_5 { |x, y| x * y }
call_block_with_3_and_5 { |x, _y| x.even? }
