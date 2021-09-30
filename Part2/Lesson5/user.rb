# frozen_string_literal: true

class User
  attr_accessor :family, :name, :midname

  def initialize(family:, name:, midname:)
    @family = family
    @name = name
    @midname = midname
  end
end

user = User.new(family: 'Иванов', name: 'Иван', midname: 'Иванович')

puts "Фамилия пользователя: #{user.family}"
puts "Имя пользователя: #{user.name}"
puts "Отчество пользователя: #{user.midname}"
