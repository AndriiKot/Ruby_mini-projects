﻿newDir = 'Tri medvede'
newTextDir = 'NewText'
originalText = 'OriginalText'
sentencesOriginalText = 'SentencesORIGINAL.txt'
newSentencesText = 'NewSentences.txt'

Dir.chdir(newDir ) {| path | Dir.mkdir(newTextDir) }

arraySentencesOriginal = File.readlines("#{newDir}/#{originalText}/#{sentencesOriginalText}",chomp: true)
arraySentencesRemoveInt = arraySentencesOriginal.dup.delete_if {|el| el =~ /\d+/}
p arraySentencesOriginal

newArraySentences = arraySentencesRemoveInt.dup
                    .join.split('.')
                    .delete_if{|el| el == ''}

# File.open("Tri medvede/NewSentences.txt",'w+') do |file|
#     file.puts *newArraySentences.map!{|el| el + '.'}
# end

# stringFile = arraySentencesRemoveInt.join
# stringFile.gsub!(/[:,!.\\=?"()]/,' ')

# arrWords = stringFile.split(' ');
# arrWords.uniq!

# File.open("Tri medvede/#{folder}/NewUniqWords.txt",'w') do |file|
#     file.puts *arrWords
#     file.puts "-" * 145
#     file.puts "Unique words: #{arrWords.size}"
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


















