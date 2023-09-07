hash_Folders = {}
hash_Folders.default = ''

def create_element_name() = my_break(gets.strip)
def my_break(str) = str == '' ? false : str 

loop do
    element_key = create_element_name || break
    element_value = create_element_name || break
    hash_Folders[element_key] = element_value
end

hash_Folders.delete_if {|key, value| key == '' or value == ''}
p hash_Folders