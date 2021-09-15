# frozen_string_literal: true

a = Array.new(10) { rand(0..99) }
puts a
print 'Максиммальный элемент массива: '
puts a.max
print 'Минимальный элемент массива: '
puts a.min
