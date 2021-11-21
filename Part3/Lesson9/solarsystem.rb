# frozen_string_literal: true

class InputException < RuntimeError
end

class SolarSystem
  PLANETS = {
    sun: 0,
    mercury: 1,
    venus: 2,
    earth: 3,
    mars: 4,
    jupiter: 5,
    saturn: 6,
    uranus: 7,
    neptune: 8,
    pluto: 9
  }.freeze

  PLANETS.each do |key, value|
    define_method key do
      value
    end
  end

  def method_missing(_method)
    raise InputException, 'Такой у нас планеты нет!'
  end
end

nums = SolarSystem.new
puts nums.pluto
puts nums.saturn
puts nums.planet
