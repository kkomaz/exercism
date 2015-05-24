require 'pry'

class Robot
  attr_accessor :name

  @@instances = []

  def initialize
    @name = ""
    name_generator
    duplication_check
  end

  def self.all
    @@instances
  end

  def self.all_names
    self.all.collect do |object|
      object.name
    end
  end

  def name_generator
    letter_generator
    number_generator
  end 

  def letter_generator
    2.times do |i|
      @name << LETTERS_ARRAY.sample
    end
  end

  def number_generator
    3.times do |i|
      @name << NUMBERS_ARRAY.sample.to_s
    end
  end

  def reset
    initialize
  end

  private

  def duplication_check
    if Robot.all_names.count(@name) > 1
      reset
    else
      @@instances << self
    end 
  end
  
  NUMBERS_ARRAY = (0..9).to_a
  LETTERS_ARRAY = ('A'..'Z').to_a

end
