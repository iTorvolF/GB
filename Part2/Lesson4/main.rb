# frozen_string_literal: true

require_relative 'building'

building = Building.new

puts "Количество квартир: #{building.rooms}"
puts "Количество этажей: #{building.floors}"
puts "Количество подъездов #{building.entrance}"
puts "Парковочные места: #{building.parking}"
