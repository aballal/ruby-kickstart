# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]
def reverse_map(*array)
    array.reverse.map {|n| result = yield(n)}
=begin
    #Implementing without Ruby methods reverse and map
    #Commented after rake 3:1 passed
    results=[]
    (array.length-1).downto(0) { |i| results << yield(array[i]) }
    results
=end
end

# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]
