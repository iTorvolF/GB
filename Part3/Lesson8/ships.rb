# frozen_string_literal: true

# При помощи класса OpenStruct создайте классы следующих боевых кораблей:
# атомную подводную лодку (ракеты, торпеды);
# ракетный крейсер (ракеты);
# военный транспорт (грузовой трюм, кран).
# Создайте по три объекта каждого из классов, снабдив случайным количеством ракет и торпед те корабли, которые могут их нести.
# Каждый из кораблей должен занимать одну клетку на игровом поле (размером 10×10). Корабли не должны занимать клетку, в которой уже находится другой корабль.

require 'ostruct'
require 'set'

field = Set.new
field << [rand(1..10), rand(1..10)] while field.size < 9
new_field = field.to_a

submarine = 3.times.map do
  OpenStruct.new(missiles: rand(10), torpedoes: rand(15), coord: new_field.pop)
end

cruiser = 3.times.map do
  OpenStruct.new(missiles: rand(30), coord: new_field.pop)
end

transport = 3.times.map do
  OpenStruct.new(cargo: 20_000, crane: 1000, coord: new_field.pop)
end

p submarine
p cruiser
p transport
