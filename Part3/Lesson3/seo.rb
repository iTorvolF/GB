# frozen_string_literal: true

# Вместо атрибутов meta_title, meta_description и meta_keywords создайте класс Seo с атрибутами title, description и keywords. 
# В классы News и About добавьте SEO-информацию с использованием класса Seo.

class Seo
  attr_accessor :title, :description, :keywords

  def initialize
    @title = title
    @description = description
    @keywords = keywords
  end
end

class News < Seo
  attr_accessor :date, :body

  def initialize
    @date = date
    @body = body
    super
  end
end

class About < Seo
  attr_accessor :phone, :address

  def initialize
    @phone = phone
    @address = address
    super
  end
end

site = Seo.new
site.title = 'Название'
site.description = 'Описание'

site_news = News.new
site_news.date = '31.10.2021'
site_news.title = site.title

about = About.new
about.phone = ['+7 920 4567722', '+7 920 4567733']
about.description = site.description

p site
p site_news
p about
