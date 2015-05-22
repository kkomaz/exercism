class Hamming

  def self.compute(dna_1,dna_2)
    first_dna_array = dna_1.split('')
    second_dna_array = dna_2.split('')
    result = 0
    i = 0

    while i < first_dna_array.length
      if first_dna_array[i] == second_dna_array[i]
        i += 1
      else
        result += 1
        i += 1
      end
    end
    result
  end
end

