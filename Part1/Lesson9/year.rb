# frozen_string_literal: true

# Создайте метод, который проверяет, является ли текущий год високосным. 
# В случае, если год високосный, метод должно возвращать true (истину), иначе должна возвращаться false (ложь).

def check_year(year)
  return true if (year % 400).zero?

  (year % 4).zero? && year % 100 != 0
end

print 'Введите год: '
puts check_year(gets.chomp.to_i)
