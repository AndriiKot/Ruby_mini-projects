print 'Enter :  '
word = gets.strip
loop do
  word.each_char do |chr|
    print "\u001b[38;5;#{rand(255)}m"
    print chr
    print "\u001b[0m"
end
  print ' '
  sleep 0.03
end

