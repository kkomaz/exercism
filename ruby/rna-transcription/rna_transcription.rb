class Complement
 
 @@pairs = {
       "G" => "C",
       "C" => "G",
       "T" => "A",
       "A" => "U"
     }

 def self.of_dna(strand)
  rna_comp = strand.split('').collect { |element| @@pairs[element]}
  checker(rna_comp)
 end

 def self.of_rna(strand)
  dna_comp = strand.split('').collect {|element| @@pairs.key(element)}
  checker(dna_comp)
 end

 def self.checker(comp)
   if comp.first.nil?
     raise ArgumentError.new("Invalid Input")
   else
     comp.join
   end
 end

end


