# frozen_string_literal: true
def
sum = 5.times.inject(0) do |sum, i|
  puts "Введите #{i + 1}е число"
  sum += gets.chomp.to_f
end
puts "Сумма чисел равна: #{sum}"
