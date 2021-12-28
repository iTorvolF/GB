# frozen_string_literal: true

# Создайте класс Group, объект которого должен представлять коллекцию пользователей класса User. 
# Задействуйте для реализации класса Group модуль Enumerable.

class Group
  include Enumerable
  attr_accessor :staff

  def initialize(staff)
    @staff = staff
  end

  def each(&block)
    @staff.each(&block)
  end

  def add(name, position)
    User.new(name, position).user { |name, pos| @staff[name] = pos }
  end

  class User
    attr_accessor :name, :position

    def initialize(name, position)
      @name = name
      @position = position
    end

    def user
      yield name, position
    end
  end
end

STAFF = {
  'Мария' => 'TeamLead',
  'Андрей' => 'Backend Developer',
  'Сергей' => 'Backend Developer',
  'Юлия' => 'Frontend Developer',
  'Максим' => 'Frontend Developer',
  'Олег' => 'QA',
  'Ольга' => 'Designer'
}

group = Group.new(STAFF)
group.add('Владимир', 'Designer')
puts group.sort
