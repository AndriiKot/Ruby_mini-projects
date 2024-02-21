begin
    int = gets.chomp
    Rational(int)
    puts 'Число!!!'
  rescue ArgumentError
    puts "Не число!!!!"
end
