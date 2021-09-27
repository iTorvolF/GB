# frozen_string_literal: true

class Building
  ROOMS = 120
  FLOORS = 5
  ENTRANCE = 5
  PARKING = 40

  def rooms
    ROOMS
  end

  def floors
    FLOORS
  end

  def entrance
    ENTRANCE
  end

  def parking
    PARKING
  end
end

building = Building.new

puts "Количество квартир: #{building.rooms}"
puts "Количество этажей: #{building.floors}"
puts "Количество подъездов #{building.entrance}"
puts "Парковочные места: #{building.parking}"
