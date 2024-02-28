

Dir.new('./').each_child do |folder_or_file|
  new_folder_or_file_name = folder_or_file.strip.gsub(/[^\w\.]/,'_')  
  File.rename(folder_or_file, new_folder_or_file_name)
end
  
