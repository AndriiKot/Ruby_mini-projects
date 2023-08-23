arrayARGV = ARGV
newDir = ARGV[0] || "New folder"
fileDemoOriginal = 'OriginalText.txt'

folderOriginal = 'OriginalText'
fileOriginal = 'SentencesORIGINAL.txt'
folderModification = 'NewText'
filemModification = 'NewSentences.txt'

pathOriginalText = "#{newDir}/#{folderOriginal}/#{fileOriginal}"
pathModificationText = "#{newDir}/#{folderModification}/#{filemModification}"



Dir.mkdir(newDir)
Dir.chdir(newDir){|path| Dir.mkdir(folderOriginal); Dir.mkdir(folderModification)}

File.open(pathOriginalText, "w+"){ |file|    
    str = File.read(fileDemoOriginal)
    strcopy = ''
    str.each_line { |line| strcopy += line unless line =~ /\d+/}
}

File.open(pathModificationText,"w+") { |file|
    file.puts "HI!!!"
}

arraySentencesOriginal = File.readlines(pathOriginalText,chomp: true)

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


















