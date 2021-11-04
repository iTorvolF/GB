# frozen_string_literal: true

def factorial(n = 0)
  (1..n).inject(:*)
end

puts 'Введите число для подсчета факториала'
puts factorial(gets.to_i)
