class String
  def to_number
    Rational(self) rescue nil
  end
end

#TEST:
puts "string 5/4 containing an 2/3 integer 13 and a float 24.0".split(' ').filter(&:to_number).map!(&:to_f).sum
puts "string 5/4 containing an 2/3 integer 13 and a float 24.0".split(' ').filter(&:to_number).map!(&:to_i).sum
puts "string 5/4 containing an 2/3 integer 13 and a float 24.0".split(' ').filter(&:to_number).map!(&:to_r).sum
