class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def self.leap?(year)
    Year.new(year).leap?
  end

  def leap?
    initial_check || second_check
  end

  private

  def initial_check
    @year % 400 == 0 
  end

  def second_check
    @year % 4 == 0 && @year % 100 != 0
  end

end

