# frozen_string_literal: true

class Vector
  attr_accessor :x1, :x2, :y1, :y2

  def initialize(x1, x2, y1, y2)
    @x1 = x1
    @x2 = x2
    @y1 = y1
    @y2 = y2
  end

  class Point
    attr_accessor :x, :y

    def initialize
      @x = x
      @y = y
    end
  end

  def distance
    Math.sqrt((x1 - y1)**2 + (x2 - y2)**2)
  end
end

vec = Vector.new(6, 8, 3, 4)
p vec.distance
