# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  for i in 2..array.length do
    return true if array[i] == array[i-1] && array[i-1] == array[i-2]
  end
  false
end

=begin
p got_three? []
p got_three? [1]
p got_three? [1,2]
p got_three? [1, 2, 2, 2, 3]
p got_three? ['a', 'a', 'b']
p got_three? ['a', 'a', 'a']
p got_three? [1, 2, 1, 1]
=end
