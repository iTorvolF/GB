# frozen_string_literal: true

class Ship
  attr_accessor :rockets, :torpedoes, :hold, :crane

  def initialize
    yield self
  end
end

class OnWaterShip < Ship
end

class UnderWaterShip < Ship
end

submarine = UnderWaterShip.new do |s|
  s.rockets = 10
  s.torpedoes = 20
end
puts submarine.rockets

cargoship = OnWaterShip.new do |c|
  c.hold = 1000
  c.crane = 1
end
puts cargoship.crane

containership = OnWaterShip.new do |x|
  x.crane = 3
end
puts containership.crane

oiltanker = OnWaterShip.new do |t|
  t.hold = 20_000
end
puts oiltanker.hold

cruiser = OnWaterShip.new do |z|
  z.rockets = 200
end
puts cruiser.rockets

transport_ship = OnWaterShip.new do |d|
  d.hold = 15_000
  d.rockets = 10
  d.crane = 1
end
puts transport_ship.hold
puts transport_ship.crane
puts transport_ship.rockets
