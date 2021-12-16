# frozen_string_literal: true

# Создайте программу check.rb, 
# которая принимает единственный аргумент. 
# Определите, что пользователь ввёл в качестве аргумента: строку, 
# целое или вещественное число?

a = 1.5

type = case a
       when Integer then 'Целое число'
       when String then 'Строка'
       when Float then 'Вещественное число'
       else 'Какой-то класс'
       end

puts type
