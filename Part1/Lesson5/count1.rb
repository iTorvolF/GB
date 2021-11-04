class User
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