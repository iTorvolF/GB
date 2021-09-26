# frozen_string_literal: true

require 'date'

class Date
  def week(num)
    a = 1
    yield Date.commercial(year, num, a), a += 1 until a >= 8
  end
end
p Date.new(2021).week(37) { |i| puts i }
