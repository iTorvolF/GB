# frozen_string_literal: true

# Создайте класс пользователя User, объект которого может хранить фамилию, имя и отчество пользователя, а также его электронный адрес. 
# Кроме того, создайте исключение UserException, которое выбрасывается при попытке ввести неверный электронный адрес или имя пользователя, 
# содержащее символы, отличные от русского языка.

require 'uri'

class InputException < RuntimeError
end

class User
  attr_accessor :fio, :email

  def initialize(fio, email)
    raise InputException, 'Некорректный email' unless email.match(URI::MailTo::EMAIL_REGEXP)
    raise InputException, 'Некорректные ФИО' unless fio.match(/[а-яА-ЯёЁ]/)

    @fio = fio
    @email = email
  end
end

user = User.new('Иванов Иван Иванович', 'mail@mail.ru')
p user
# user2 = User.new('Petrov Petr Petrovich', 'pochta@mail.ru')
# p user2
user3 = User.new('Петров Петр Петрович', 'почта@mail.ru')
p user3
