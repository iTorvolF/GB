# frozen_string_literal: true

puts 'Введите слово для поиска!'

search = gets.chomp
word = IO.readlines('words.txt')

word.each { |x| puts x if /#{search}(.*)\s/ === x }
