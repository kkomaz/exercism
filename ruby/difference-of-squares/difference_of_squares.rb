require 'pry'

class Squares
  attr_accessor :input_array

  def initialize(input)
    @input_array = (1..input).to_a
  end

  def difference
    square_of_sums - sum_of_squares
  end

  def sum_of_squares
    @input_array.collect {|number| number**2 }.inject(:+)
  end

  def square_of_sums
    @input_array.inject(:+)**2
  end

end