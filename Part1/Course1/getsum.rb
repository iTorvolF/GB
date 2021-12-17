# frozen_string_literal: true

# По документации языка программирования Ruby познакомьтесь с альтернативным способом передачи данных в программу — методом gets. 
# Перепишите программы number.rb, sum.rb и factorial.rb из предыдущих примеров с использованием этого метода.

def
  
sum = 5.times.inject(0) do |sum, i|
  puts "Введите #{i + 1}е число"
  sum += gets.chomp.to_f
end

puts "Сумма чисел равна: #{sum}"
