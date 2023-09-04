require 'set'

arrayARGV = ARGV

numbeFairyTale = 1
defaultNameFairyTales = "Nová rozprávka"

folderFairyTales = "Rozprávky"
folderNewFairyTale = ARGV[0] || defaultNameFairyTales


Dir.mkdir(folderFairyTales) unless Dir.exist?(folderFairyTales)

Dir.open(folderFairyTales) do 
  Dir.chdir(folderFairyTales)

  regex = Regexp.new("#{defaultNameFairyTales} \\d+")
  arrayDefalutNames = Dir.entries('.').select { |name| name.match?(regex)}

  arrayDefalutNames.sort! do |folder,other_folder| 
    folder.match(/\d+/).to_s.to_i <=> other_folder.match(/\d+/).to_s.to_i
  end

  arrayDefalutNames.each.with_index do |folder,i|
    newName = "#{defaultNameFairyTales} #{i + 1}"
    system 'rename',folder,newName
    arrayDefalutNames[i] = newName
  end
p arrayDefalutNames

   if  folderNewFairyTale == defaultNameFairyTales 
        #newCreateFolder = arrayDefalutNames[-1]
       #  p arrayDefalutNames[1]
        Dir.mkdir("#{} XX")
   end
end




# fileDemoOriginal = 'OriginalText.txt'
# fileSentencesUnion = 'NewSentences.txt'
# fileWordsUnion = 'WordsUnique.txt'
# folderUnionWorld = 'Unique Words'

# pathToSentences = "#{folderNewFairyTale}/#{fileSentencesUnion}"


# Dir.mkdir(folderUnionWorld) unless Dir.exist?(folderUnionWorld)

# File.open(pathToSentences, "w+") do |file|
#        uniqSentences = File.readlines(fileDemoOriginal).to_set
#        uniqSentences.delete_if{|element| element =~ /\d+/ ? element : file.puts(element)}
# end

# setUnionWorlds = Set[];

# def unionWorlds(name_file,set)
#        File.open(name_file,"a+"){ |file| 
#        array = file.readlines
#        array.each do |line| 
#               arraySentence = line.delete!(",.!?\n\"").split(' ')
#               arraySentence.each {|world| set.add(world)}
#        end
# }
# end

# if File.exist?(pathToSentences)
#        File.open("#{folderUnionWorld}/#{folderUnionWorld}.txt", "a+") do |file|
#              unionWorlds(pathToSentences,setUnionWorlds)
#        end 
# else
#        p "NO"
# end



# File.open(pathToSentences, "w+"){ |file|    
#     str = File.read(fileDemoOriginal)
#     moditification_str = ''
#     str.each_line do |line| 
#         moditification_str += line =~ /\d+/ ? '' : line
#     end
#     str = nil;
#     uniqSentences = Set[]
#     moditification_str.split('.').delete_if {|element|
#              if element == '' then element
#              else uniqSentences.add(element)
#              end
#             }
#     p uniqSentences
#     file.puts uniqSentences.join('.')
#     # file.puts moditification_str
#     # p moditification_str.class
#     # file.puts (moditification_str.join('.'))
# }

# File.open(pathModificationText,"w+") { |file|
#     file.puts "HI!!!"
# }

# arraySentencesOriginal = File.readlines(pathOriginalText,chomp: true)

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


















