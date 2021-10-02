# frozen_string_literal: true

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
