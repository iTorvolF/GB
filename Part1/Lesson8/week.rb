# frozen_string_literal: true

week = rand(0..10)

case week
when 0
  puts 'Понедельник'
when 1
  puts 'Вторник'
when 2
  puts 'Среда'
when 3
  puts 'Четверг'
when 4
  puts 'Пятница'
when 5
  puts 'Суббота'
when 6
  puts 'Воскресенье'
else
  puts nil
end

puts week
