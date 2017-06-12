# fill out the method below, then run the tests with
#   $ rake 1:2


# Given two numbers, a and b, return half of whichever is smallest, as a float
#
# arithmetic2(1, 2)    # => 0.5
# arithmetic2(19, 10)  # => 5.0
# arithmetic2(-6, -7)  # => -3.5

def arithmetic2(a, b)
  #puts "#{a}, #{b}"  #to check the test cases used by rake
  a < b ? a.to_f/2 : b.to_f/2
end

=begin
puts arithmetic2(1,2)
puts arithmetic2(20,19)
puts arithmetic2(-6,-7)
puts arithmetic2(-20,-19)
puts arithmetic2(0,0)
=end
