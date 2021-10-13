# frozen_string_literal: true

# - We can add a key/value pair to a hash using `=`
#   to assign the value to the key
# - We can set the default value with `hash.default =`
#   or when we create the hash with Hash.new (constructor)
# - We can get all the keys with #keys or all the values with #values

# ---

favourite_foods = {
  sarah: 'pizza',
  kimber: 'pizza',
  brian: 'pizza',
  lionel: 'pizza',
  kevin: 'dijon mustard on a biscuit'
}

p favourite_foods[:lionel]

# Adding values
favourite_foods[:tyra] = 'crispy bacon'

p favourite_foods[:tyra]

favourite_foods[:hunter] = 'venison'

p favourite_foods

# Delete values
favourite_foods.delete(:kimber)

p favourite_foods

# Assign default value
favourite_foods.default = 'pizza'

favourite_foods[:kimber] = 'salad'
# p favourite_foods["bla bla bla"]

p favourite_foods

# Constructor notation
foosball_scores = Hash.new(0)

p foosball_scores[:sarah]
foosball_scores[:sarah] += 1 # because default is 0 (int)

foosball_scores[:kay] += 1

foosball_scores[:justin] += 1

p foosball_scores

# getting list of keys and values
p players = foosball_scores.keys

p scores = foosball_scores.values

p popular_foods = favourite_foods.values.uniq
