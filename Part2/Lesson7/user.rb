# frozen_string_literal: true

class User
  attr_accessor :last_name, :first_name, :mid_name, :email

  def initialize
    yield self
  end
end

user = User.new do |t|
  t.last_name = 'Ivanov'
  t.first_name = 'Ivan'
  t.mid_name = 'Ivanovich'
  t.email = 'ivanov@mail.ru'
end

p user.last_name
p user.first_name
p user.mid_name
p user.email
