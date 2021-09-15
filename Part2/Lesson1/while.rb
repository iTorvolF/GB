# frozen_string_literal: true

print 'Введите первое число: '
i = gets.to_i
print 'Введите второе число: '
j = gets.to_i

while j.zero?
  print 'Введите второе число отличное от 0: '
  j = gets.to_i
end

puts i / j
