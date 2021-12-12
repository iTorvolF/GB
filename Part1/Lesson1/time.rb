# frozen_string_literal: true

# В документации найдите описание классов Date и Time, 
# создайте программу, которая выводит текущую дату в формате «27 октября 2021».

t = Time.new
puts t.strftime('%T %d %B %Y')
