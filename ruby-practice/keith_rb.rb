# i just want to assign a collection to an instance variable. then use this variable in the following method
# @tshirts = Adverts.all in the first method (edited)
# then use @tshirt in the second method

require 'pry'

some_collection = [
  {
    colour: 'red',
    size: 'small'
  },
  {
    colour: 'yellow',
    size: 'large'
  },
  {
    colour: 'blue',
    size: 'xlarge'
  }
]

class Keith

  attr_accessor :tshirts

  def initialize some_collection
    @tshirts = some_collection
  end

  def keith_second_method
    @tshirts[0][:colour] = 'purple'
  end

end

keith1 = Keith.new(some_collection)

# in the bound irb run:
# > keith1.keith_second_method
# > some_collection[0][:colour]

# I'm not sure if this is what you mean, but I have defined
# an instance var called '@tshirts', and that collection
# is modifiable in 'keith_second_method'.
# Is this something like what you were thinking of?

binding.pry
