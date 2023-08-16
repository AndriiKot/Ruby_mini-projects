array = File.readlines('sentencesDEMO.txt',chomp: true)
# p array
# p array.size
array.delete_if { |el| el =~ /\d+/}
# p array.size
newArray  = array.dup.join.split('.')

p newArray.object_id
p array.object_id
p array.size,newArray.size
p "-" * 33

p newArray.size
p newArray.size
p newArray
puts newArray

newArray.map {|el| el.split("!")}

puts newArray

File.open('NewSentencesDEMO.txt','w+') do |file|
    file.puts *newArray.map!{|el| el + '.' if not el.empty?}
end

stringFile = array.join
# p stringFile.size
stringFile.gsub!(/[:,!.\\=?"()]/,' ')
# p stringFile.size
# p stringFile

gets


