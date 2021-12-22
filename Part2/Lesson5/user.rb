# frozen_string_literal: true

# Создайте класс пользователя User, который бы при создании объекта позволял задавать фамилию, имя и отчество. 
# Класс должен реализовывать методы чтения и установки фамилии, имени и отчества.

class User
  attr_accessor :family, :name, :midname

  def initialize(family:, name:, midname:)
    @family = family
    @name = name
    @midname = midname
  end
end

user = User.new(family: 'Иванов', name: 'Иван', midname: 'Иванович')
user1 = User.new(family: 'Петров', name: 'Петр', midname: 'Петрович')

puts "Фамилия пользователя: #{user.family}"
puts "Имя пользователя: #{user.name}"
puts "Отчество пользователя: #{user.midname}"
puts "Фамилия пользователя: #{user1.family}"
puts "Имя пользователя: #{user1.name}"
puts "Отчество пользователя: #{user1.midname}"
