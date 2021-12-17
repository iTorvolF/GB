# frozen_string_literal: true

# Создайте программу age.rb, которая принимает год, месяц и день рождения пользователя. 
# Вычислите возраст пользователя и выведите результат.

require 'date'

birthday = DateTime.new(1990, 1, 3)
age = (DateTime.now - birthday) / 365.25

puts age.to_i
