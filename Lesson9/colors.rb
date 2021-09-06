# frozen_string_literal: true

C = Hash[
  'red' => 1, 'orange' => 2, 'yellow' => 3,
  'green' => 4, 'indigo' => 5, 'blue' => 6, 'violet' => 7
]
print 'Введите цвет: '
puts (C[gets.chomp]).to_s
