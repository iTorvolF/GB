# frozen_string_literal: true

# Используя массив, полученный в предыдущем задании, выведите цвета в алфавитном порядке. 
# Уберите из списка повторяющиеся цвета и пустые строки.

arr = []

loop do
  print 'Введите цвет или stop: '
  color = gets.strip
  break if color == 'stop'

  arr << color
end

puts arr.reject(&:empty?).sort.uniq
