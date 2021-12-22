# frozen_string_literal: true

# Создайте класс Hello, при создании объекта которого конструктору можно было бы передавать параметр Hello.new('world'). 
# При вызове метода say этого объекта hello.say или при выводе объекта методом puts выводилась бы фраза 'Hello, world!'.

class Hello
  def initialize(name)
    @name = name.capitalize
  end

  def say
    puts "Hello #{@name}!"
  end
end

hello = Hello.new('ruby')
hello.say
