# frozen_string_literal: true

# Создайте метод week, который предоставляет справочник дней недели (1 — понедельник, 2 — вторник, 3 — среда, 4 — четверг, 5 — пятница, 6 — суббота, 7 — воскресенье). 
# Метод должен принимать номер и возвращать название дня недели, соответствующего этому номеру. В случае ошибочного номера должно возвращаться значение nil.

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
