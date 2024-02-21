require 'fiber'

file = File.open("input.txt", "r")
sum = 0
fiber = Fiber.new do
  loop do
    data = file.read(1000) # Читаем файл по частям
    p data
    p data.end_with?("\n")
    n = data.end_with?("\n") ? 0 : data.match(/\d+$/)[0]
    p n
    gets
    Fiber.yield(data) # Передаем часть данных обратно
  end
end

loop do
  data = fiber.resume n
  break if data.nil?
  
  # Обрабатываем данные
  # puts data
end

file.close

p sum
