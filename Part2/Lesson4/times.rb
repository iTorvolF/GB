# frozen_string_literal: true

# Добавьте в стандартный класс Integer методы minutes, hours, days, 
# которые возвращают количество секунд, соответствующих заданным значениям. 
# Например, вызов 5.minutes должен вернуть 300, 2.hours — 7200, а 1.days — 86400.

class Integer
  MINUTES = 60
  HOURS = 3600
  DAYS = 86_400

  def minutes
    self * MINUTES
  end

  def hours
    self * HOURS
  end

  def days
    self * DAYS
  end
end

puts 10.hours
