# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  new_string = ''
  i = return_odds ? 1 : 0
  while (i<string.length)
    new_string+=string[i]
    i+=2
  end
  new_string
end

=begin
puts odds_and_evens("abcdefg",true)
puts odds_and_evens("abcdefg",false)
puts odds_and_evens("",true)
puts odds_and_evens("",false)
puts odds_and_evens("a",true)
puts odds_and_evens("a",false)
puts odds_and_evens("ab",true)
puts odds_and_evens("ab",false)
=end
