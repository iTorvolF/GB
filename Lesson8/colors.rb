# frozen_string_literal: true

colors = rand(0..10)

case colors
when 0
  puts 'Красный'
when 1
  puts 'Оранжевый'
when 2
  puts 'Желтый'
when 3
  puts 'Зеленый'
when 4
  puts 'Голубой'
when 5
  puts 'Синий'
when 6
  puts 'Фиолетовый'
else
  puts nil
end

puts colors
