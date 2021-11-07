# frozen_string_literal: true

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
