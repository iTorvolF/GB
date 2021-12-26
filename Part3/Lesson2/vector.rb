# frozen_string_literal: true

# Создайте класс Vector, моделирующий вектор в двумерном пространстве координат. 
# Объекты класса должны позволять задать две точки координат: начало и конец вектора. 
# Точка координат обладает двумя параметрами: x и y. Для задание свойств точки создайте вложенный класс Vector::Point. 
# Реализуйте метод distance, позволяющий вычислить длину вектора.

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
