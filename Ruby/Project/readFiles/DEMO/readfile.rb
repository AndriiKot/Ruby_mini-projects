arrayARGV = ARGV
newDir = ARGV[0] || "New folder"
contentText = ARGV[1]

folderOriginal = 'OriginalText'
fileOriginal = 'SentencesORIGINAL.txt'
folderModification = 'NewText'
filemModification = 'NewSentences.txt'

pathOriginalText = "#{newDir}/#{folderModification}/#{filemModification}"
pathModificationText = "#{newDir}/#{folderOriginal}/#{fileOriginal}"


Dir.mkdir(newDir)
Dir.chdir(newDir){|path| Dir.mkdir(folderOriginal); Dir.mkdir(folderModification)}

File.open(pathOriginalText, "w+"){ |file|    
    file.puts "Moditification"
}

File.open(pathModificationText,"w+") { |file|
    file.puts contentText
}

arraySentencesOriginal = File.readlines(pathOriginalText,chomp: true)
p arraySentencesOriginal
# arraySentencesRemoveInt = arraySentencesOriginal.dup.delete_if {|el| el =~ /\d+/}

# newArraySentences = arraySentencesRemoveInt.dup
#                     .join.split('.')
#                     .delete_if{|el| el == ''}

# File.open("#{newDir}/#{newTextDir}/#{newSentencesText}","w+") { |file|
#     file.puts *newArraySentences.map!{|el| el + '.'}
# }

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


















