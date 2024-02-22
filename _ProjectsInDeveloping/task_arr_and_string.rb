 targets = ['7 человек были там', 'мне нужно было 100 рублей', 'если сегодня 21 февраля, завтра будет 22']


# Version-1
sum_V_1 = 0

targets.each do |target|
  target.split(' ').each do |item|
    begin
        sum_V_1 += Float(item)    
      rescue ArgumentError
        nil
    end   
  end
end

# Version-2
sum_V_2 = 0

targets.each do |target|
  target.split(' ').each do |item|
    sum_V_2 += item.to_f
  end
end

# Version-3_0

sum_V_3_0 = 0
arr = []

targets.each do |target|
  arr += target.scan(/\d+/).map(&:to_f)
end
sum_V_3_0 = arr.sum
arr = nil

# Version-3_1
 targets = ['3 чело7век были 20 там', 'мне нуж44но было 100 рублей', 'если се44го50дня 21 фе100вр100аля, зав11тра будет 22']

sum_V_3_1 = targets.map do |target| 
  target.scan(/\d+/).map!(&:to_i)
end.flatten.sum


p sum_V_1
p sum_V_2
p sum_V_3_0
p sum_V_3_1

p targets