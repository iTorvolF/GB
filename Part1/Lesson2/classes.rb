# frozen_string_literal: true

# Создайте четыре класса: пользователь, компьютер, сеть и хост. 
# Подберите классам подходящие названия и создайте объекты этих классов.

class Computer
  def comp_name
    'PC210'
  end
end

class Network
  def net_name
    'Сеть 1'
  end
end

class User
  def fio
    'Иванов Иван Иванович'
  end
end

class Host
  def host
    1017
  end
end

computer = Computer.new
network = Network.new
user = User.new
host = Host.new

puts computer.comp_name
puts network.net_name
puts user.fio
puts host.host
