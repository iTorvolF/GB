# frozen_string_literal: true

# Создайте класс Foo, метод new которого может принимать хэш. 
# Объекты класса Foo должны отзываться на методы, названия которых совпадают с ключами хэша. 
# В качестве результата методы должны возвращать значения, соответствующие ключу в хэше.

class Foo
  def initialize(week = {})
    @week = week
  end

  def method_missing(days)
    @week[days]
  end
end

w = Foo.new(week = {
              monday: 'понедельник',
              tuesday: 'вторник',
              wednesday: 'среда',
              thursday: 'четверг',
              friday: 'пятница',
              saturday: 'суббота',
              sunday: 'воскресенье'
            })

puts w.monday
puts w.sunday
puts w.friday
puts w.winter
