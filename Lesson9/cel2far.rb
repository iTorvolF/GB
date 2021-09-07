# frozen_string_literal: true

def convert(c)
  (c * 9 / 5) + 32
end

puts 'Введите температуру по цельсию: '
puts "Температура по фаренгейту: #{convert(gets.chomp.to_i)}"
