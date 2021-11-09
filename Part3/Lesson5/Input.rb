# frozen_string_literal: true

COUNT = 10

list = []
i = 0

ERROR = 'Можно вводить только символы русского и английского алфавита! '
puts 'Введите 10 строк:'
while i < COUNT
  str = gets.chomp
  if str =~ /\A[a-zа-яё]+\z/i
    list << str
    i += 1
  else
    raise ERROR
  end
end

result = list.sort.tally

p result
