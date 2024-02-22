
def create_tree_folders_Codewars
    path = "./Codewars"
    Dir.mkdir(path)
    Dir.chdir(path)

    ARGV.each do |main_folder|
        Dir.mkdir(main_folder)
        (1..8).each do |i|
             path = "./#{main_folder}/kyu_#{i}"
             Dir.mkdir(path)
             File.open("#{path}/.gitkeep",'w'){}
        end
    end
end

create_tree_folders_Codewars()

# TEST:
# Create New Project "Codewars"
# $ ruby createCodewarsTree_version_1_0_0.rb ruby javascript go scala java c c++ rust 
#

