class String
  def to_integer
    Integer(self) rescue nil
  end
 
  def to_float
    Float(self) rescue nil
  end

  def to_rational
    Rational(self) rescue nil
  end
  
  def to_number
    to_integer || to_float|| to_rational
  end
end

#TEST:
puts "string 5/4 containing an 2/3 integer 13 and a float 24.0".split(' ').filter(&:to_number).map!(&:to_i).sum
