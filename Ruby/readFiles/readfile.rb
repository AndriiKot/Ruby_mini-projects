arraySentencesOriginal = File.readlines('SentencesORIGINAL.txt',chomp: true)
arraySentencesOriginal.delete_if { |el| el =~ /\d+/ }
newArraySentences = arraySentencesOriginal.dup.join.split('.')
p newArraySentences
newArraySentences.delete_if{|el| el == ''};
p newArraySentences

gets

File.open('NewSentences.txt','w+') do |file|
    file.puts *newArraySentences.map!{|el| el + '.' if not el.empty?}
end

# stringFile = array.join
# stringFile.gsub!(/[:,!.\\=?"()]/,' ')

# arrWords = stringFile.split(' ');
# arrWords.uniq!

# File.open('NewUniqWords.txt','w+') do |file|
#     file.puts *arrWords
#     file.puts "-" * 145
#     file.puts "words: #{arrWords.size}"
# end

# arrayTransletion = File.readlines('TransletionG.txt', chomp: true)

# arrayWordsPlusTaransletion = arrWords.zip(arrayTransletion)
# hasharrayWordsPlusTaransletion = arrayWordsPlusTaransletion.to_h

# arraySentences = File.readlines('NewSentences.txt',chomp: true)
# arraySentences.compact!
# arraySentences.delete_if {|el| el == ''}

# File.open('DEMO.txt',"w+") do |file|
#     file.puts *arraySentences
# end


















