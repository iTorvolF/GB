# frozen_string_literal: true

# Создайте метод week, который принимает в качестве аргумента порядковый номер недели в году. 
# В блок метода должна передаваться последовательность объектов класса Date c датами заданной недели: от понедельника до воскресенья.

require 'date'

class Date
  def week(num)
    a = 1
    yield Date.commercial(year, num, a), a += 1 until a >= 8
  end
end
p Date.new(2021).week(37) { |i| puts i }
