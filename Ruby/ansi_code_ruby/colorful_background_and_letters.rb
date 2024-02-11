print 'Enter : '
 word = gets.strip 
 loop do 
    background = "\e[48;5;#{rand(255)}m"
    word.each_char do |chr|
         print background
         print "\e[38;5;#{rand(255)}m" 
        print chr,'-'
        print "\e[0m" 
    end 
    print "\e[0m"  
    sleep 0.1
end


