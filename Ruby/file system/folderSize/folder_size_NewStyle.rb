
def folder_size_bytes(folder_path)
    Dir.glob(File.join(path,"**","*")).sum { |file| File.size(file) unless File.directory?(file)  }
end

