# frozen_string_literal: true

# Познакомьтесь с гемом Faraday. С использованием этого гема создайте программу для обращения к странице с курсами Geekbrains https://gb.ru/courses. 
# Подсчитайте количество строк в HTML-файле, который возвращается в ответ на запрос.

require 'faraday'

puts Faraday.get('https://gb.ru/courses').body.lines.count
