# frozen_string_literal: true

# Пусть имеется хэш, в котором ключом выступает название книги, а значением —массив авторов:
# authors = {
#   'Design Patterns in Ruby' => ['Russ Olsen'],
#   'Eloquent Ruby' => ['Russ Olsen'],
#   'The Well-Grounded Rubyist' => ['David A. Black'],
#   'The Ruby Programming Language' => ['David Flanagan', 'Yukihiro Matsumoto'],
#   'Metaprogramming Ruby 2' => ['Paolo Perrotta'],
#   'Ruby Cookbook' => ['Lucas Carlson', 'Leonard Richardson'],
#   'Ruby Under a Microscope' => ['Pat Shaughnessy'],
#   'Ruby Performance Optimization' => ['Alexander Dymo'],
#   'The Ruby Way' => ['Hal Fulton', 'Andre Arko']
# }
# Создайте из него новый хэш, в котором ключом будет выступать автор, 
# а значением — количество книг, которое он написал. Отсортируйте авторов по количеству книг. 
# В группе авторов, которые написали одинаковое количество книг, отсортируйте авторов по алфавиту.

BOOKS = { 'Design Patterns in Ruby' => ['Russ Olsen'],
          'Eloquent Ruby' => ['Russ Olsen'],
          'The Well-Grounded Rubyist' => ['David A. Black'],
          'The Ruby Programming Language' => ['David Flanagan', 'Yukihiro Matsumoto'],
          'Metaprogramming Ruby 2' => ['Paolo Perrotta'],
          'Ruby Cookbook' => ['Lucas Carlson', 'Leonard Richardson'],
          'Ruby Under a Microscope' => ['Pat Shaughnessy'],
          'Ruby Performance Optimization' => ['Alexander Dymo'],
          'The Ruby Way' => ['Hal Fulton', 'Andre Arko'] }.freeze

new_books = BOOKS.map { |_k, v| v }.flatten.tally.sort.to_h

max_books = new_books.select { |k, _v| k == new_books.key(new_books.values.max) }

max_books.merge!(new_books).map { |k, v| puts "#{k} : #{v}" }
