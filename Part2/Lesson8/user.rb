# frozen_string_literal: true

# Создайте класс пользователя веб-сайта, позволяющий задать фамилию, имя, отчество и электронный адрес. Унаследуйте от него несколько классов:
# обычный посетитель;
# автор материала;
# администратор;
# модератор.
# Подумайте, как лучше назвать классы, как организовать иерархию классов и нужна ли она тут. 
# Добавьте в каждый из классов инстанс-метод say, который должен сообщать роль пользователя. 
# Переопределите метод to_s, который должен возвращать ту же строку, что и метод say. 
# Постарайтесь максимально исключить повторы кода.

class User
  attr_accessor :last_name, :first_name, :mid_name, :email

  def initialize
    yield self
  end

  def say
    print "Моя роль: #{self.class}"
  end

  alias to_s say
end

class Admin < User
end

class Moderator < User
end

class Author < User
end

class CommonUser < User
end

author = Author.new do |a|
  a.last_name = 'Ivanov'
  a.first_name = 'Ivan'
  a.mid_name = 'Ivanovich'
  a.email = 'asdf123@mail.ru'
end

puts author.say
puts author.last_name
puts author.to_s

admin = Admin.new do |x|
  x.last_name = 'Petrov'
  x.first_name = 'Alex'
  x.mid_name = 'Andreevich'
  x.email = 'petrov1979@gmail.ru'
end

puts admin.say
puts admin.first_name
puts admin.to_s
