# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(n)
  odd_even = Hash.new
  1.upto(n) { |i| odd_even[i] = [] if i.odd? }
  1.upto(n) { |i| odd_even.select {|key,value| key > i}.each {|key,value| value << i} if i.even? }
  odd_even
end

# p staircase(20)
