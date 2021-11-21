# frozen_string_literal: true

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
