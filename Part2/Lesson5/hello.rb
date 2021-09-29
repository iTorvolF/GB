# frozen_string_literal: true

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
