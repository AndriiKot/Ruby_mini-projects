
def method_1(depth = 1,path  = './')
    return if depth == 0
    folders = Dir.entries(path).reject { |el|  el == "." || el == ".." || File.file?(el)}
    puts folders
    return if folders.size == 0
    folders.each do 
        cmd = 'echo git branch '
            cmd += "#{path}"
            # system(`#{cmd}`)
    end
    folders.size.times do |i, d = depth,p = path|
        children = File.join(p,folders[i])
        p children
        method_1(d - 1,children) 
    end
end
 
method_1(3)


