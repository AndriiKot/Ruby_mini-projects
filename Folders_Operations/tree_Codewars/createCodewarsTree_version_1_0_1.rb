
def create_tree_folders_Codewars
    ARGV.each do |main_folder|
        Dir.mkdir(main_folder) unless Dir.exist?(main_folder)
        (1..8).each do |i|
             path = "./#{main_folder}/kyu_#{i}"
             Dir.mkdir(path) unless Dir.exist?(path)
             File.open("#{path}/.gitkeep",'w'){} if Dir.empty?(path)
        end
    end
end

create_tree_folders_Codewars()

# TEST:
# Adding to an existing project 'Codewars'
# $ ruby createCodewarsTree_version_1_0_1.rb ruby javascript go scala java c c++ rust 
#

