# frozen_string_literal: true

# В UNIX-подобных операционных системах имеется утилита ncal, которая выводит календарь на текущий месяц.
# Создайте на Ruby программу, выводящая аналогичный календарь для текущего месяца.

require 'date'

head = Date.today.strftime('%B %Y')
year = Date.today.year
month = Date.today.mon
firstday = Date.new(year, month, 4).day
lastday = Date.new(year, month, -1).day
week = %w[пн вт ср чт пт сб вс]

puts head.center(20)
puts week.join(' ')
print '   ' * firstday

days = firstday
(1..lastday).select do |date|
  print "#{date.to_s.rjust(2)} "
  days += 1
  print "\n" if (days % 7).zero?
end
