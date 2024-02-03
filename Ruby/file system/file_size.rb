
def folder_size_bytes(folder_path)
    total_size = 0
    Dir.glob(File.join(folder_path, '**', '*')).each do |file|
      next if File.directory?(file) 
      total_size += File.size(file)
    end
    total_size
end