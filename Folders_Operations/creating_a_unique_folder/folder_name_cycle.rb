﻿
folder_name = ARGV[0]   
   
def create_uniq_folder(folder_name = nil)
    folder_name  ||= 'folder_name'
   if Dir.exist?("./#{folder_name}")
        count = 1
        loop do
           folder_path = "#{folder_name}#{count}"
           count += 1
            unless Dir.exist? folder_path
                return Dir.mkdir(folder_path)
            end
        end
    end
   Dir.mkdir(folder_name)
end

create_uniq_folder(folder_name)
