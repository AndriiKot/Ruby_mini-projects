

def find_nested_folders_2(folder_path, folder_name)
    nested_folders = []
  
    Dir.foreach(folder_path) do |item|
      next if item in ['.', '..']
  
      item_path = File.join(folder_path, item)

      if folder_path.match?(item) || File.file?(item_path)
        next
      end
      
      if File.basename(item_path) == folder_name
        nested_folders << item_path
      else
        nested_folders += find_nested_folders_2(item_path, folder_name)      
      end
    end
    return nested_folders
end

