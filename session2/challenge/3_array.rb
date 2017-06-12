# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    (0..self.length).map {|i| self[i] if i.even?}.join
  end
end

=begin
puts "abcdefg".every_other_char
puts "".every_other_char
puts "a".every_other_char
=end
