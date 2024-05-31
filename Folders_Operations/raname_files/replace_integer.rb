

Dir.new('./').each_child do |folder|
    replace = '8-kyu'
    unless folder.include?(replace) && !File.file?(folder)
        new_folder_name = folder.gsub(/\d+/,replace)
        File.rename(folder, new_folder_name)
    end
end

