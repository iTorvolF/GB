# frozen_string_literal: true

class Integer
  MINUTES = 60
  HOURS = 3600
  DAYS = 86_400

  def minutes
    self * MINUTES
  end

  def hours
    self * HOURS
  end

  def days
    self * DAYS
  end
end

puts 10.hours
