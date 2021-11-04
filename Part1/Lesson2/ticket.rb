# frozen_string_literal: true

class Ticket
  def event
    'Трудно быть рубистом'
  end

  def date
    '11.08.2021'
  end

  def price
    3500
  end

  def row
    4
  end

  def seat
    12
  end
end

ticket = Ticket.new

puts "Название фильма: #{ticket.event}"
puts "Дата фильма: #{ticket.date}"
puts "Цена билета: #{ticket.price}"
puts "Ряд: #{ticket.row}"
puts "Место: #{ticket.seat}"
