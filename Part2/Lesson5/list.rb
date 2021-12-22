# frozen_string_literal: true

# Создайте класс List, метод new которого может принимать произвольное количество параметров. 
# Объекты класса должны поддерживать метод each, в блок которого последовательно передаются параметры, заданные при создании объекта.

class List
  def initialize(*args)
    @args = args
  end

  def each
    @args.each { |x| puts x**2 }
  end
end

list = List.new(1, 2, 3, 4, 5)
list.each
