
def folder_size_bytes(folder_path)
    Dir.glob(File.join(folder_path,"**","*")).sum { |file| File.size(file) unless File.directory?(file) }
end

