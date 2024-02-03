
def test1(path)
    Dir.glob(File.join(path,"**","*")).sum { |file| File.size(file) unless File.directory?(file) }
end

p test1('./')