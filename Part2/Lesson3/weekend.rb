# frozen_string_literal: true

require 'date'

class Date
  def weekend
    weekends = [6, 0]
    (Date.new(2021, 0o1, 0o1)..Date.new(2021, 12, 31)).select { |a| weekends.include?(a.wday) }
  end
end

date = Date.new
puts date.weekend
