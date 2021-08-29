# frozen_string_literal: true

puts 'Введите целое число'
a = gets.chomp.to_i

if a.even?
  puts 'Число четное'
else
  puts 'Число нечетное'
end
