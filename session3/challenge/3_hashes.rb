# Write a method that takes a string and returns a hash
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}
def word_count(string)
  word_frequency = Hash.new(0)
  string.downcase.split.each {|word| word_frequency[word] += 1}
  word_frequency
end

#p word_count("The dog and the cat")
