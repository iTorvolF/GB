# frozen_string_literal: true

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
