# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker (match_opposite, *list)
  #Matching opposites, possibly because they attract!
  matches =[]
  list.each_slice 2 do |first, second|
    # Overwriting truthy and falsey to true and false respectively
    first = first ? true : false
    second = second ? true : false
    # If match_opposite = true opposites are set to true, if match_opposite = false opposites are set to false
    # This implies return value is same as match_opposite for an opposite pair
    first == !second ? matches << match_opposite : matches << !match_opposite
  end
  matches
end

=begin
p match_maker false, true,  true                # => [true]
p match_maker true,  true,  true                # => [false]
p match_maker true,  false, false               # => [false]
p match_maker true,  false, true                # => [true]
p match_maker true,  true,  false               # => [true]
p match_maker true,  true,  true, false, true   # => [false, true]
p match_maker true,  true,  true, false, nil    # => [false, false]
p match_maker true,  true,  true, true, nil     # => [false, true]
p match_maker true,  true,  true, 0, nil        # => [false, true]
=end
