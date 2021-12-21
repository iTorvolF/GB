# frozen_string_literal: true

# Добавьте в стандартный класс Time метод hello, 
# который выводит приветствие, в зависимости от текущего времени суток. 
# С 6:00 до 12:00 функция должна возвращать "Доброе утро", 
# с 12:00 до 18:00 — "Добрый день", 
# с 18:00 до 00:00 — "Добрый вечер", 
# 00:00 до 6:00 — "Доброй ночи".

class Time
  def hello
    time = Time.now

    if (time.hour >= 6) && (time.hour < 12)
      puts 'Доброе утро!'
    elsif (time.hour >= 12) && (time.hour < 18)
      puts 'Добрый день!'
    elsif (time.hour >= 18) && (time.hour < 24)
      puts 'Добрый вечер!'
    else
      puts 'Доброй ночи!'
    end
  end
end

time = Time.new
puts time.hello
