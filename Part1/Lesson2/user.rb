# frozen_string_literal: true

# Создайте класс пользователя User и снабдите его двумя методами: fio, 
# который возвращает имя и фамилию пользователя, и profession, 
# который возвращает профессию. Создайте программу, 
# которая демонстрирует работу класса, путём вывода фамилии, 
# имени и профессии пользователя в стандартный поток вывода.

class User
  def fio
    'Иванов Иван Иванович'
  end

  def profession
    'Инженер'
  end
end

user = User.new

puts "Фамилия Имя Отчество: #{user.fio}"
puts "Профессия: #{user.profession}"
