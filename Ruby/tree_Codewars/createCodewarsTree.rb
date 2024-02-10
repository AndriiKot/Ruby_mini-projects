folder_name = ARGV[0]

p folder_name
def createTreeCodewars(folder_name)
    folder_name  ||= 'folder_name'
    if Dir.exist?("./#{folder_name}")
        p "#{folder_name}: exist? Yes"
        count = 1
        loop do
           folder_path = "#{folder_name}#{count}"
           p folder_path
           count += 1
            unless Dir.exist? folder_path
                Dir.mkdir(folder_path)
                break
            end
        end
    else
        p "#{folder_name}: exist? No"
    end
# Dir.mkdir(folder_name)

# (1..8).each do |i|
#     folder_name = "#{i}"
#     Dir.mkdir(folder_name)
  
#     # Создание файла .gitkeep внутри каждой папки
#     File.open("#{folder_name}/.gitkeep", 'w') {}
#   end
end

createTreeCodewars(folder_name)
  