# frozen_string_literal: true

# Создайте класс пользователя User, в объекте которого можно сохранить фамилию, имя, отчество пользователя, а также же его электронный адрес. 
# Добейтесь, чтобы метод new класса User принимал блок, в котором можно инициализировать объект.

class User
  attr_accessor :last_name, :first_name, :mid_name, :email

  def initialize
    yield self
  end
end

user = User.new do |t|
  t.last_name = 'Ivanov'
  t.first_name = 'Ivan'
  t.mid_name = 'Ivanovich'
  t.email = 'ivanov@mail.ru'
end

p user.last_name
p user.first_name
p user.mid_name
p user.email
