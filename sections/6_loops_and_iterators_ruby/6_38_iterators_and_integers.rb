# frozen_string_literal: true

# - If we want to something x times, we can call `x.times`. Note
#   that if we want to use a block variable with #times, it will start at
#   0 and finish at x -1.
# - If we want to do something to each number in the range `x..y`
#   (two dots => includes endpoint!), we can call `x.upto(y)`
# - There's no point creating a range object just to iterate over it,
#   unless it keeps us from repeating ourselves or make our code
#   more readable.

# Ranges
(3..7).each { |n| puts n }
(-5...7).each { |n| puts n }

# do something x times
x = 9
9.times { puts 'hello' }
9.times { puts 'hi' }

# We can actually skip the step where we create a Range

# x.upto(y) iterate over the range x..y
# without actually creating a range object.

12.upto(24) { |x| puts x if x.even? }

# x.times iterate x times (not worry about the block variable)
3.times { puts 'la' }
counter = 0
20.times { counter += 1 }
p counter
