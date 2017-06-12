# A grad student at a local university thinks he has discovered a formula to
# predict what kind of grades a person will get. He says if you own less than
# 10 books, you will get a "D". If you own 10 to 20 books, you will get a "C",
# and if you own more than 20 books, you will get a "B".
# He further hypothesizes that if you actually read your books, then you will
# get a full letter grade higher in every case.
#
# grade(4,  false)  # => "D"
# grade(4,  true)   # => "C"
# grade(15, true)   # => "B"

def grade(num_books, reads_books)
  grade_list=["A","B","C","D"]
  if num_books < 10
    grade=3;  #Corresponding to D
  elsif num_books > 20
    grade=1   #Corresponding to B
  else
    grade=2   #Corresponding to C
  end
  reads_books ? grade_list[grade-1] : grade_list[grade]
end

=begin
puts grade(9,  false)
puts grade(10,  false)
puts grade(15,  false)
puts grade(20,  false)
puts grade(21,  false)

puts grade(9,  true)
puts grade(10, true)
puts grade(15, true)
puts grade(20, true)
puts grade(21, true)
=end
