begin
    int = gets.chomp
    Integer(int)
    Float(int)
    puts 'Число!!!'
  rescue ArgumentError
    puts "Не число!!!!"
end
