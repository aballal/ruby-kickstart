# fill out the method below
# then test to see if you did them correctly with
#  $ rake 1:1

# Given a number, return 20 less than, that number multiplied by 5
#
# arithmetic1(10)     # => 30
# arithmeitc1(10.5)   # => 32.5
# arithmeitc1(-6)     # => -50

def arithmetic1(n)
  # the code for this method goes in here
  # puts n  #to check the test cases used by rake
  5 * n - 20
end

#My test cases
=begin
puts arithmetic1(10)
puts arithmetic1(10.5)
puts arithmetic1(-6)
puts arithmetic1(-6.25)
puts arithmetic1(4)
puts arithmetic1(0)
=end
