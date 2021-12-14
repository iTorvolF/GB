class User
  
# Модифицируйте пример User с классовой переменной @@counter, которые мы рассмотрели на уроке, 
# таким образом, чтобы переменная @@counter увеличивалась на единицу всякий раз, когда создаётся новый объект.
# Подсказка: для этого потребуется изучить специальный метод initialize и реализовать его в классе.
  
  @@counter = 0
  attr_reader :guest

    def initialize(guest)
      @guest = guest
      @@counter += 1
    end

    def << self
      @@counter
    end 
end

guest1 = User.new('Сергеев Михаил Александрович')
guest2 = User.new('Кузнецов Вадим Андреевич')

puts "Гость 1: #{guest1.guest}"
puts "Гость 2: #{guest2.guest}"
puts "Всего гостей: #{User.counter}"
