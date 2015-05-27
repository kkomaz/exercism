class Grains
  attr_accessor :space
  
  def initialize(space)
    @space = space
  end

  def self.square(space)
    Grains.new(space).square
  end

  def self.total
    result = 0
    (2..64).each do |i|
      result += 2**(i-1)
    end
    result += 1
  end

  def square
    @space == 1 ? 1 : 2**(@space-1)
  end
end