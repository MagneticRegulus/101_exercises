name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
# What does this print out? Can you explain these results?

# BOB
# BOB

# both `name` and `save_name` are pointing to the same object id at line 3.
# line 3 mutates the orginal object. Since both variables are pointing to
# the same object, the value of both variables will be mutated.
