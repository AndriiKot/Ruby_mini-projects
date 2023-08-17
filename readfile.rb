array = File.readlines('SentencesORIGINAL.txt',chomp: true)
array.delete_if { |el| el =~ /\d+/}
newArray  = array.dup.join.split('.')


File.open('NewSentences.txt','w+') do |file|
    file.puts *newArray.map!{|el| el + '.' if not el.empty?}
end

stringFile = array.join
stringFile.gsub!(/[:,!.\\=?"()]/,' ')

arrWords = stringFile.split(' ');
arrWords.uniq!

File.open('NewUniqWords.txt','w+') do |file|
    file.puts *arrWords
    file.puts "-" * 145
    file.puts "words: #{arrWords.size}"
end

arrayTransletion = File.readlines('TransletionG.txt', chomp: true)
p arrayTransletion
p arrayTransletion.size

arrayWordsPlusTaransletion = arrWords.zip(arrayTransletion)
p arrayWordsPlusTaransletion


















