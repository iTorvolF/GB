# frozen_string_literal: true

a = 1.5

type = case a
       when Integer then 'Целое число'
       when String then 'Строка'
       when Float then 'Вещественное число'
       else 'Какой-то класс'
       end

puts type
