﻿
dir = Dir.new('./')

dir.each_child  do |folder| 
    new_folder_name = ''
    regex = /[^\w\.]/
    p folder
    if folder.match?(regex)
        folder.strip.each_char do |chr|
            if chr.match?(/-/) || chr.match?('\s')
                chr.replace('_')
                new_folder_name += chr
                next
            end
              next if chr.match?(regex) 
              new_folder_name += chr
        end
        File.rename(folder, new_folder_name)
    end
end