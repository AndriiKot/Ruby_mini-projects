
folder_name = ARGV[0]   
   
def create_uniq_folder(folder_name = nil)
    folder_name  ||= 'folder_name'
   if Dir.exist?("./#{folder_name}")
        suffix = Time.now.to_i.to_s.gsub('.','')
        loop do
           folder_path = "#{folder_name}#{suffix}"
            unless Dir.exist? folder_path
                return Dir.mkdir(folder_path)
            end
            suffix = (suffix.to_i + 1).to_s
        end
    end
   Dir.mkdir(folder_name)
end

create_uniq_folder(folder_name)
