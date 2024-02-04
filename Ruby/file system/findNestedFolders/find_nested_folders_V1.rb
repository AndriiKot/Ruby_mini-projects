
def find_nested_folders(folder_path, folder_name)
    nested_folders = []
  
    Dir.foreach(folder_path) do |item|
      next if item == '.' || item == '..'
  
      item_path = File.join(folder_path, item)
      
      if File.directory?(item_path)
        next if (folder_path.match?(item))
        if File.basename(item_path) == folder_name
          nested_folders << item_path
        end
  
        nested_folders += find_nested_folders(item_path, folder_name)
      end
    end
  
    return nested_folders
end

