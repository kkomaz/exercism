require 'pry'

class Prime

  def self.nth(elements)
    counter = 0
    element_counter = 0
    prime_array = []
    raise ArgumentError.new("Invalid Input") if elements == 0
    
    while element_counter < elements
      if is_prime?(LONG_ARRAY[counter])
        prime_array << LONG_ARRAY[counter]
        counter += 1
        element_counter += 1
      else
        counter += 1
      end
    end
    prime_array[element_counter-1]
  end

  def is_prime?(input)
    (2..(Math.sqrt(input).ceil)).each do |number|
      if input % number == 0 && input != 2
        return false
      end
    end
  end

  private
  
  LONG_ARRAY = (2..1000000).to_a

end


