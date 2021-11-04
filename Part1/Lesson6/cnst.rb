# frozen_string_literal: true

class Const
  D1 = 'Понедельник'
  D2 = 'Вторник'
  D3 = 'Среда'
  D4 = 'Четверг'
  D5 = 'Пятница'
  D6 = 'Суббота'
  D7 = 'Воскресенье'
  def week
    puts [D1, D2, D3, D4, D5, D6, D7]
  end
end

Const.new.week
