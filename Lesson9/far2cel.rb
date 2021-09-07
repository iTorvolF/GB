# frozen_string_literal: true

def convert(f)
  (f - 32) * 5 / 9
end

puts 'Введите температуру по фаренгейту: '
puts "Температура по цельсию: #{convert(gets.chomp.to_i)}"
