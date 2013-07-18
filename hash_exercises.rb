# add_a_banana adds the pair
# 'fruit' => 'banana' to the hash e.g
#
#   add_a_banana({'a'=>1}) #=> {'a'=> 1, 'fruit'=> 'banana'}
#
def add_a_banana(input_hash)
    # TODO
    # Look at Setting elements in hash_examples
end

# no_oranges removes the key 'orange' (and its
# value) from the hash if it is there, returning
# the modified hash
#
#  no_oranges({'pear'=>'ripe', 'orange'=>'unripe'}) #=> {'pear'=>'ripe'}
#
#  no_oranges({'pear'=>'ripe', 'apple'=>'sour'}) #=> {'pear'=>'ripe', 'apple'=>'sour'}
#
def no_oranges(input_hash)
    # you need to 'delete' the key 'orange'
end


# duck_or_moose returns the value assosciated
# with the key 'duck' if the hash has such a
# key, or the word 'moose' otherwise
#
#  duck_or_moose({'duck'=> 'daffy', 'a'=>2}) #=> 'daffy'
#
#  duck_or_moose({'dog'=> 'snoopy'}) #=> 'moose'
#
def duck_or_moose(input_hash)
    # how do you test whether a hash has a key?
end



# wheres_wally returns 'here!' if 'wally' is
# one of the values in the hash and 'not here'
# otherwise e.g
#
#   wheres_wally({'a'=>1, 'b'=>2}) #=> "not here"
#
#   wheres_wally({'a'=> 'wally'}) #=> "here!"
#
def wheres_wally(input_hash)
    # how do you test whether a hash has a value?
end



# pretty_print prints out the values in
# a hash and returns nil e.g.
#
#    pretty_print({'a'=>1, 'b'=>2, 'c'=>3})
#    -> Key a has value 1.
#    -> Key b has value 2.
#    -> Key c has value 3.
#    -> There are no more keys.
#    #=> nil
#
def pretty_print(hash)
    # how do you iterate over a hash?
end


# Maxwell's serves only jaegerbombs and becks.
# The jaegerbombs especially are a rip-off.
# order_price calculates the total cost of an
# order e.g.
#
#   order_price({'jaegerbomb'=>2}) #=> 11.0
# 
#   order_price({'jaegerbomb'=>1, 'becks'=>2}) #=> 12.5
#
def order_price(order)
    prices = {'jaegerbomb'=>5.5, 'becks'=>3.5}
    # you need to iterate over one hash and
    # pull values from the other
end

# count_words returns the words in a sentence
# along with their frequencies
#
#  count_words("that that that that lady just said should have been which")
#  #=> {'that'=> 4, 'lady'=>1, 'just'=>1, 'said'=>1, 'should'=>1, 'have'=>1,
#       'been'=> 1, 'which'=>1}
#
def count_words(sentence)
    # you first need to split sentence into an
    # array
    # Then you can iterate over that array, putting
    # the values into your hash.
    # See the "Using a hash for counting" section in
    # hash_examples.
end


# tell_story_with_defaults should work as follow
#
#   tell_story({}) #=> "It was a dark and stormy night ..."
#
#   tell_story({'adj1'=>'hot', 'adj2'=>'sunny', 'time_of_day'=> 'afternoon'})
#    #=> "It was a hot and sunny afternoon ..."
#
#   tell_story({'adj2'=>'steamy'}) #=> "It was a dark and steamy night ..."
#
def tell_story(opts={})
    # Set up a hash containing the defaults.
    # Then use merge.
    
    # leave this alone
    story_beginning(opts)
end

# Leave story_beginning alone
def story_beginning(opts)
    "It was a #{opts['adj1']} and #{opts['adj2']} #{opts['time_of_day']} ..."
end
