array = File.readlines('sentencesDEMO.txt',chomp: true)
# p array
p array.size
array.delete_if { |el| el =~ /\d+/}
p array.size
p array

stringFile = array.join
p stringFile
