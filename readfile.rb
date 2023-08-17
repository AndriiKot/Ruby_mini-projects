array = File.readlines('sentencesDEMO.txt',chomp: true)
array.delete_if { |el| el =~ /\d+/}
newArray  = array.dup.join.split('.')


File.open('NewSentencesDEMO.txt','w+') do |file|
    file.puts *newArray.map!{|el| el + '.' if not el.empty?}
end

stringFile = array.join
stringFile.gsub!(/[:,!.\\=?"()]/,' ')

p stringFile
arrWords = stringFile.split(' ');
p arrWords
p arrWords.size



