require 'pry'

@num = 3

def plus(j)
  @num + j
end

puts plus(2)

class Apple
  attr_accessor :name

  def initialize
    @type
  end

  def other
    @name = "Happy"
  end

  def something
    @type = 6
  end

end

binding.pry
