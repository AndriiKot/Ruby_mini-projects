hash_Folders = {}
hash_Folders.default = ''

def print_question_folder_or_file = print "Create Folder or File?('d'/'f'): "
def print_next_step = print "Push Enter to next step."
def print_wrong_data_folder_or_file 
    puts "Wrong data"
    print_question_folder_or_file
    print "\n or \n"
    print_next_step
    print "\n"
end

def is_file?(str) 
    'file' if str.casecmp?('file') || str.casecmp?('f')
end

def is_empty?(str)
    '' if str.empty?
end

def is_folder?(str)
    'folder' if str.casecmp?('folder') || str.casecmp?('dir') || str.casecmp?('d')
end

def print_question_name(str) = print "Enter name #{str}: "

print_wrong_data_folder_or_file 
loop do
    print_question_folder_or_file
    get_answer = gets.strip
    answeer_folder_or_file = is_file?(get_answer) || is_folder?(get_answer) || is_empty?(get_answer)
    p answeer_folder_or_file
    next unless answeer_folder_or_file
    break if answeer_folder_or_file == ''
end


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

