require 'pry'

class Raindrops
  
  RAINDROPS = {
      '3' => 'Pling',
      '5' => 'Plang',
      '7' => 'Plong'
  }

  def self.convert(prime_number)
    if prime_number == 1
      return prime_number.to_s
    else
      primes = prime_factor_finder(prime_number)
    end
    drops_array = primes.collect { |p| RAINDROPS[p.to_s] }
    drops = drops_array.join
    drops.empty? ? prime_number.to_s : drops
  end

  def self.prime_factor_finder(input)
    prime_collection(input).compact
  end

  private

  def self.prime_collection(input)
    (2..input).collect do |number|
      if(input % number == 0)
        number if is_prime?(number)
      end
    end
  end

  def self.is_prime?(input)
    (2..(Math.sqrt(input).ceil)).each do |number|
      if input % number == 0
        return false
      else
        return true
      end
    end
  end
end
