require 'fiber'

file = File.open("input.txt", "r")
sum = 0
fiber = Fiber.new do 
  loop do
    data = file.read(1000) # Читаем файл по частям
    line = data.encode('UTF-8', 'UTF-8') if data
    numbers = line.scan(/\d+/).map!(&:to_i) if data 
    sum += numbers&.sum  if numbers
    Fiber.yield(data) # Передаем часть данных обратно
  end
end

loop do
  data = fiber.resume 
  break if data.nil?
end

file.close

p sum
