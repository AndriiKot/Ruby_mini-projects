hash_Folders = {}
hash_Folders.default = ''

def create_element_name() = gets.strip
def next_step(str) = return self.send('break')

loop do
    element_key = create_name_folder_or_file()
    element_value = create_name_folder_or_file()
    hash_Folders[element_key] = element_value
end