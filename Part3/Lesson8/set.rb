# frozen_string_literal: true

# Создайте класс Keywords для хранения списка ключевых слов. 
# Каждое ключевое слово должно встречаться ровно один раз — независимо от того, в каком регистре оно добавляется в объект класса. 
# Используйте для решения задания класс множества Set.

require 'set'

class Keyword
  attr_accessor :set

  def initialize
    @set = Set.new
  end

  def <<(word)
    @set << word.downcase
  end
end

keyword = Keyword.new

keyword << 'day'
keyword << 'daY'
keyword << 'week'
keyword << 'WEEK'
keyword << 'month'
keyword << 'MoNtH'

p keyword
