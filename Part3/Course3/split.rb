# frozen_string_literal: true

# Создайте программу, которая разбивает файл на десять частей. 
# Рядом с существующим файлом должны появиться десять новых файлов, к расширению которых добавляются суффиксы x01, x02, ..., x10. 
# В случае, если размер файла меньше 10-ти байтов, программа должна сообщить о невозможности произвести разбиение.

# решение 1

PARTS = 10

size = File.size('words.txt')
split = File.readlines('words.txt')

raise 'Файл слишком маленький для разбиения' if size < 10

i = 0
while i < PARTS
  File.open("x#{i + 1}.txt", 'w') do |x|
    x.puts split[i]
  end
  i += 1
end

# решение 2

require 'splitter'

size = File.size('words.txt')
split = size / 10

raise 'Файл слишком маленький для разбиения' if size < 10

file = Splitter::Split.new('words.txt', split)

file.process
