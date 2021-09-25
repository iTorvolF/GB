# frozen_string_literal: true

class Week
  DAYS = %w[Понедельник Вторник Среда Четверг Пятница Суббота Воскресенье].freeze

  def days
    DAYS
  end
end

week = Week.new
week.days.each { |x| puts x if x[0] == 'П' }
