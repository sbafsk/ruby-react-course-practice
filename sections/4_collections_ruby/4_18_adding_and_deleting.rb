# frozen_string_literal: true

# - We can assign an array index directly with
#   =, #push (<<) to the end, or #unshift to the front.
# - We can delete by index with #delete_at, by value with #delete,
#   from the end with pop, or from the front with shift
# - We can join two arrays with #+ to create a new array or
#   append the second to the first with #concat.

# Add to an array:

# Assing an index

bands = []
bands[0] = 'Beatles'

p bands
bands[3] = 'Rolling stones'
bands[3] = 'Led Zepellin'

# Add to the end
# push

bands.push('Salt N Pepa')
p bands

bands << 'Metallica' << 'Destiny'
p bands

# Delete from the end
# Pop, removes last element and returns it

poped = bands.pop
p bands
p poped

container = []

container << bands.pop

p container

p bands

# Delete from the front:
# shift

shifted = bands.shift
p bands
p shifted

bands.unshift('Ramones')
p bands

# Delete by index
bands.delete_at(3)
p bands

# Delete by value
bands.delete(nil) # every nil
p bands

# Insert a value at index
bands.insert(1, 'Gorillaz')
p bands

p container

p bands + container

container << 'The strokes'

# bands << container
bands.concat(container)

p bands
