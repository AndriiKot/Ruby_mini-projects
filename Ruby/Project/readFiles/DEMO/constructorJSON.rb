hash_Folders = {}
hash_Folders.default = ''

def create_element = print "Create Folder or File?('d'/'f'): "
def folder_or_file(str) = is_folder?(str) || is_file?(str)
def is_folder?(str) = print "is folder"
def is_file?(str) =  print "is file"
def enter_name(str) = print "Enter name #{str}: "

create_element; folder_or_file('str'); folder_or_file(nil)
enter_name('folder')

# def create_element_name() = my_break(gets.strip)
# def empty_str?(str) = str == '' ? true : fasle 

# def make_Folder_or_File 
# loop do
#     element_key = create_element_name 
#     element_value = create_element_name 
#     element_key && element_value || break
#     hash_Folders[element_key] = element_value
# end
# end

