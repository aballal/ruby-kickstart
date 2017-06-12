# remember, you can test this file with
#   $ rake 1:3


# Given a number, n, return 10 if it is even, and 20 if it is odd
#
# ten_twenty(5) # => 20
# ten_twenty(6) # => 10

def ten_twenty(n)
  #puts n  #to check the test cases used by rake
  n.even? ? 10 : 20
end

=begin
puts ten_twenty(5)
puts ten_twenty(6)
puts ten_twenty(-5)
puts ten_twenty(-6)
puts ten_twenty(0)
=end
