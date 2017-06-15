# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

def spiral_access(two_d,&block)
  return[[]] if two_d.empty? || two_d[0].empty?
  spiral_order = []

  ((two_d.length+1)/2).times do |count|
    i = count
    j = count

    #Moving to the right
    while j < two_d.length - count
      block.call two_d[i][j]
      j += 1
    end
    j -= 1

    #Moving down
    i += 1
    while i < two_d.length - count
      block.call two_d[i][j]
      i += 1
    end
    i -= 1

    #Moving to the left
    j -= 1
    while j >= 0 + count
      block.call two_d[i][j]
      j -= 1
    end
    j += 1

    #Moving up
    i -= 1
    while i > 0 + count
      block.call two_d[i][j]
      i -= 1
    end
    i += 1

  end
end

=begin
two_d = [
    [ 1,  2,  3,  4, 5],
    [16, 17, 18, 19, 6],
    [15, 24, 25, 20, 7],
    [14, 23, 22, 21, 8],
    [13, 12, 11, 10, 9],
  ]
order = []
spiral_access two_d do |i|
  order << i
end
p order
=end
