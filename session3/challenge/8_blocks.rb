# This problem is based off of example 2
# Modify it so that it also tracks a person's age and a quote
# Allow any of these to be set with a hash as well, but the block should overwrite the hash
#
#
# EXAMPLE:
#
# artist = Person.new :name => 'Prince' do |person|
#   person.age   = 47
#   person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
# end
#
# artist.name   # => "Prince"
# artist.age    # => 47
#
# artist.name = 'The Artist Formarly Known As Prince'
# artist.age  = 1999
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 1999
#
# artist.reinit
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 47


class Person
  attr_accessor :name, :age, :quote

  def initialize(attributes = Hash.new, &initializer)
    @name         = attributes[:name]
    @age          = attributes[:age]
    @quote        = attributes[:quote]
    @initializer  = (initializer || Proc.new { |person| })
    @initializer.call self
  end

  def reinit
    @initializer.call self
  end
end

=begin
artist = Person.new(:name => 'Kris')

p artist.name
p artist.age
p artist.quote
=end
