# frozen_string_literal: true

# Создайте класс автомобиля Car. 
# Какие инстанс-переменные и методы следует в него добавить? 
# Создайте несколько объектов легковых и грузовых автомобилей 
# и демонстрационную программу с выводом текстового отчёта по состоянию каждого из объектов-автомобилей.

class Car
  attr_reader :type, :year, :mileage, :price, :brand

  def initialize(type, year, mileage, price, brand)
    @type = type
    @year = year
    @mileage = mileage
    @price = price
    @brand = brand
  end
end

c1 = Car.new('Легковой авто', 1998, 120_000, 10_000, 'Honda')
puts "Тип машины: #{c1.type}"
puts "Год выпуска: #{c1.year}"
puts "Пробег: #{c1.mileage}"
puts "Цена: #{c1.price}"
puts "Марка: #{c1.brand}"

c2 = Car.new('Грузовик', 2005, 80_000, 22_000, 'Kamaz')
puts "Тип машины: #{c1.type}"
puts "Год выпуска: #{c1.year}"
puts "Пробег: #{c1.mileage}"
puts "Цена: #{c1.price}"
puts "Марка: #{c1.brand}"
