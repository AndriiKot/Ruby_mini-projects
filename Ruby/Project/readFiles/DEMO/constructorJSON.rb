hash_Folders = {}
hash_Folders.default = ''

def print_question = print "Create Folder or File?('d'/'f'): "
def enter_gets =  gets.strip

def is_file?(str) 
    true if str.casecmp?('file') || str.casecmp?('f')
end

def file_or_folder(boolean) = boolean ? 'file' : 'folder'
def print_question_name(str) = print "Enter name #{str}: "

print_question
element = file_or_folder(is_file?(enter_gets))
p element




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

