# frozen_string_literal: true

# Создайте класс здания Building. Создайте в нем минимум два метода. 
# Постройте объект этого класса и выведите его состояние.

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
