# frozen_string_literal: true

arr = []

loop do
  print 'Введите цвет или stop: '
  color = gets.strip
  break if color == 'stop'

  arr << color
end

puts arr
