# Given a string, replace every instance of sad to happy
#
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"

def add_more_ruby(string)
  #puts string
  find_replace=[["sad","happy"],["Sad","Happy"],["SAD","HAPPY"]]  #Ignoring more possibilities
  find_replace.each {|find,replace| string.gsub!(find,replace)}
  #puts string
  string
end

=begin
puts add_more_ruby("The clowns were sad.")          #Single match test case
puts add_more_ruby("The sad dad said sad stuff.")   #Multiple match test case
puts add_more_ruby("Happy times have come!")        #No match test case
puts add_more_ruby("Sad times are ahead, sad times are ahead, SAD times are ahead!")          #Multiple case test case
=end
