

Dir.new('./').each_child do |folder_or_file|
  new_folder_or_file_name = folder_or_file.strip.gsub(/[^\w\.]/,'_') 
  capitalize = new_folder_or_file_name.split('_').map do |word| 
     word[0] = word[0].upcase if word[0]; word
  end.join('_')
  p new_folder_or_file_name,capitalize, '*' * 33
  File.rename(folder_or_file, capitalize)
end
