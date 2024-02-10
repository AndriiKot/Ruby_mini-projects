main_folder = ARGV[0]

p main_folder
def createTreeCodewars(main_folder = 'main_folder')
    if Dir.exist?("./")
        p "#{main_folder}: exist? Yes"
    else
        p "#{main_folder}: exist? No"
    end
# Dir.mkdir(main_folder)

# (1..8).each do |i|
#     folder_name = "#{i}"
#     Dir.mkdir(folder_name)
  
#     # Создание файла .gitkeep внутри каждой папки
#     File.open("#{folder_name}/.gitkeep", 'w') {}
#   end
end

createTreeCodewars(main_folder)
  