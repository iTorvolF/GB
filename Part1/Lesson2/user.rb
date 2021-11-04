# frozen_string_literal: true

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
