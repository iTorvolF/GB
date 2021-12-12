# frozen_string_literal: true

# Используя документацию языка Ruby, познакомьтесь с возможностями класса File. 
# Решите предыдущее задание с выводом информации не в стандартный поток вывода, 
# а в файл user.txt.

class User
  def fio
    'Иванов Иван Иванович'
  end

  def profession
    'Инженер'
  end
end

user = User.new

file = File.open('user.txt', 'a+')
file.puts("Имя: #{user.fio}")
file.puts("Профессия: #{user.profession}")
