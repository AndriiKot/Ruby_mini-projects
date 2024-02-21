class String
  def integer?
    Integer(self) rescue nil
  end
 
  def float?
    Float(self) rescue nil
  end
  
  def number?
    integer? || float?
  end
end

puts "aaaa".number?
puts "1231".number?
puts "1341".integer?
puts "12.233".float?
puts "12.323".number?
puts "string containing an integer 12 and a float 23.3".split(' ').filter(&:number?)
