# frozen_string_literal: true

# Создайте массив с названиями месяцев на русском языке. 
# Извлеките месяцы с самым коротким и с самым длинным названием.

arr = %w[Январь Февраль Март
         Апрель Май Июнь
         Июль Август Сентябрь
         Октябрь Ноябрь Декабрь]

puts arr.max { |a, b| a.length <=> b.length }
puts arr.min { |a, b| a.length <=> b.length }

puts arr.max_by(&:length)
puts arr.min_by(&:length)

puts arr.minmax { |a, b| a.length <=> b.length }
puts arr.minmax_by(&:length)
