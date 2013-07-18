# Returns a new hash with keys converted into symbols e.g
# 
#    symbolize_keys({'a'=> 1, :b=>2}) #=> {:a => 1, :b => 2}
#
def symbolize_keys(h)
    new_h = {}
    h.each {|k, v| new_h[k.to_sym] = v}
    return new_h
end
