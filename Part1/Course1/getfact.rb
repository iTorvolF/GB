# frozen_string_literal: true

# По документации языка программирования Ruby познакомьтесь с альтернативным способом передачи данных в программу — методом gets. 
# Перепишите программы number.rb, sum.rb и factorial.rb из предыдущих примеров с использованием этого метода.

def factorial(n = 0)
  (1..n).inject(:*)
end

puts 'Введите число для подсчета факториала'
puts factorial(gets.to_i)
