
def removing_space_all_depth(folder_path = './')
  Dir.glob(File.join(folder_path,"**","*")) do |path|
    if File.directory?(path)
      Dir.new(path).each_child do |folder_or_file|
        new_folder_or_file_name = folder_or_file.strip.gsub(/[^\w[а-яА-Я]\.]/,'_')  
        p folder_or_file
        p new_folder_or_file_name
        p "*" * 23
        File.rename(File.join(path,folder_or_file), File.join(path,new_folder_or_file_name))
      end
    end
  end
end

removing_space_all_depth()