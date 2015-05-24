class Fixnum

  ROMAN_CONVERTER = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }
  
  def to_roman
    roman_numeral = []
    input = self
    ROMAN_CONVERTER.each do |number, roman|
      while input >= number
        input -= number
        roman_numeral << roman
      end
    end
    roman_numeral.join("")
  end
end
