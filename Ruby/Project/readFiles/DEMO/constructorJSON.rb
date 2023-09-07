hash_Folders = {}
hash_Folders.default = ''

def create_element_name() = my_break(gets.strip)
def my_break(str) = str == '' ? false : str 

loop do
    element_key = create_element_name 
    element_value = create_element_name 
    element_key && element_value || break
    hash_Folders[element_key] = element_value
end

