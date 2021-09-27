# frozen_string_literal: true

class Factory
  @@count_all = 0
  @@count_bear = 0
  @@count_ball = 0
  @@count_cube = 0

  def build(toys)
    @@count_all += 1

    case toys
    when :bear
      bear = Bear.new
      @@count_bear += 1
    when :ball
      ball = Ball.new
      @@count_ball += 1
    when :cube
      cube = Cube.new
      @@count_cube += 1
    end
  end

  def offers
    { Bear: @@count_bear,
      Ball: @@count_ball,
      Cube: @@count_cube }
  end

  def total
    @@count_all
  end

  class Bear
  end

  class Ball
  end

  class Cube
  end
end

factory = Factory.new
factory.build(:bear)
factory.build(:bear)
factory.build(:bear)
factory.build(:ball)
factory.build(:ball)
factory.build(:cube)
factory.build(:cube)
factory.build(:cube)
factory.build(:cube)

puts "Всего выпущено игрушек: #{factory.total}"
puts "Количество игрушек по видам: #{factory.offers}"
