# frozen_string_literal: true

# - We saw that #reduce is basically just a shortcut for a particular way we
#   might use each, but it's a bit cleaner and saves us a bit of typing.
# - The standard way to use #reduce is to pass it a block with two block
#   variables |memo, obj|. We can specify a starting value if we want,
#   otherwise the first item in the collection will be the starting value. The
#   'sum' or 'memo' variable takes on the whatever value the block returns
#   the next time through.
# - We can do this with any binary operation, not just summing numbers
#   (e.g building up a string), and as a shortcut, we can simply pass a symbol
#   as instead of a block.

# reduce/inject
# sum up numbers
# binary operation like that
# x <operator> y

# summing up some numbers

costs = [31.23, 64.32, 64.74, 155.25, 71.24]

total_costs = 0

costs.each do |receipt|
  total_costs += receipt
end

p total_costs

total_red = costs.reduce do |total, receipt|
  total + receipt
end

p total_red

p(%w[There Can Only Be One].inject('') do |str, word|
  p str, word
  str << word # .concat
end)

p [3, 4, 12, 53, 21].inject { |product, n| product * n }
p [3, 4, 12, 53, 21].inject(:*)
p [3, 4, 12, 53, 21].reduce(:+)

profits = 100_000 # 100,000 _ is ignored by the interpreter

expenses = [18_000, 3000, 5000, 5000]

p expenses.reduce(profits, :-)
