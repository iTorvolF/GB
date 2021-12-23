# frozen_string_literal: true

# Создайте класс человека Person, от которого унаследуйте классы посетителей User, администраторов Admin и модераторов Moderator. 
# Запретите возможность создания объектов класса Person. 
# Всем объектам классов добавьте возможность задавать фамилию, имя и отчество пользователя, а также получать эти сведения.

class Person
  attr_accessor :last_name, :first_name, :mid_name

  def initialize
    yield self
  end
end

class User < Person
end

class Admin < Person
end

class Moderator < Person
end

user = User.new do |u|
  u.last_name = 'Ivanov'
  u.first_name = 'Ivan'
  u.mid_name = 'Ivanovich'
end
puts user.last_name

moderator = Moderator.new do |m|
  m.last_name = 'Petrov'
  m.first_name = 'Petr'
  m.mid_name = 'Ivanovich'
end
puts moderator.first_name

admin = Admin.new do |a|
  a.last_name = 'Sidorov'
  a.first_name = 'Oleg'
  a.mid_name = 'Sergeevich'
end
puts admin.mid_name

class Person
  remove_method :new
end

person = Person.new
puts person
