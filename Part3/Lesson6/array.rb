# frozen_string_literal: true

print 'Введите число от 1 до 10: '
num = gets.to_i
raise 'Неверное число: ' if num < 1 || num > 10

arr = [*1..num]
result = arr + arr.reverse.pop(num - 1)
p result
