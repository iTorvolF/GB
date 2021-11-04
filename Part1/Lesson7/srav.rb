# frozen_string_literal: true

a = 17
b = a >> 1
if a == (b << 1)
  puts 'Число четное'
else
  puts 'Число нечетное'
end
