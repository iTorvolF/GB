# frozen_string_literal: true

# Создайте класс Unit, моделирующий коллектив из семи человек: 
# руководитель, два бэкенд-разработчика, 
# два фронтенд-разработчика, 
# тестировщик и дизайнер. 
# Для моделирования каждого сотрудника создайте вложенный класс Unit::Employee. 
# Объект класса Unit должен позволять добавлять, удалять, редактировать сотрудников и выводить их полный список в алфавитном порядке. 
# Кроме того, создайте метод или набор методов, позволяющих фильтровать команду по ролям — например, запрашивать список тестировщиков или бэкенд-разработчиков.

class Unit
  attr_accessor :staff

  def initialize(staff)
    @staff = staff
  end

  class Employee
    attr_accessor :users

    def initialize(name, position)
      @users = { name => position }
    end
  end

  def add(name, position)
    Employee.new(name, position).users.each { |name, pos| @staff[name] = pos }
  end

  def delete(name)
    staff.delete(name)
  end

  def sort_name
    @staff.to_a.sort.each { |name, pos| puts "#{name} - #{pos}" }
  end

  def sort_position(position)
    @staff.select { |_name, pos| pos == position }
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

staff = Unit.new(STAFF)
staff.add('Владимир', 'Designer')
staff.delete('Юлия')
staff.sort_name
puts staff.sort_position('Designer')
