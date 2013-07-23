# A few new ways to create a hash
# -------------------------------

h1 = Hash['a', 1, 'b', 2, 'c', 3]

h2 = Hash[[['a',1],['b',2],['c',3]]



# Converting to arrays (and back?)
# -------------------------------

h = {'a'=>1, 'b'=>2, 'c'=>3}

a = h.to_a

# How could you convert a back into h?

h = {'one'=>1, 'two'=>2, 'three'=>3}

keys = h.keys
values = h.values

# How would you combine keys and values back into h?
