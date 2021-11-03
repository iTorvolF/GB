# frozen_string_literal: true

class News
  include Comparable
  attr_accessor :name, :date, :body

  def initialize
    @name = name
    @date = date
    @body = body
  end

  def <=>(other)
    date <=> other.date
  end
end

news1 = News.new
news1.name = 'Название первой новости'
news1.date = '10.11.2021'
news1.body = 'Какой то текст'

p news1

news2 = News.new
news2.name = 'Название второй новости'
news2.date = '10.05.2021'
news2.body = 'Текст второй новости'

p news2

if news1.date > news2.date
  puts 'Первая новость более свежая'
else
  puts 'Первая новость старее второй'
end
