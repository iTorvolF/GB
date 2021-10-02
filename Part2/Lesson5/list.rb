# frozen_string_literal: true

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
