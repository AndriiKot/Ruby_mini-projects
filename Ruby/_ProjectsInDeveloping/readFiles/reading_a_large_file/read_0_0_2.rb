sum = 0

f = File.new("input.txt")
f.each_line {|line| sum += line.to_i }
f.close

p(sum % 2**64)
