array = File.readlines('sentencesDEMO.txt',chomp: true)
# p array
# p array.size
array.delete_if { |el| el =~ /\d+/}
# p array.size
newArray  = array.dup
p newArray.object_id
p array.object_id
File.open('NewSentencesDEMO.txt','w+') do |file|
    file.puts *array.join.split('.').map!{|el| el + '.' if not el.empty?}
end

stringFile = array.join
# p stringFile.size
stringFile.gsub!(/[:,!.\\=?"()]/,' ')
# p stringFile.size
# p stringFile

#gets


