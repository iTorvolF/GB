# frozen_string_literal: true

a = 6

type = case a
       when Integer
         if a.even?
           puts 'Четное число'
         else
           puts 'Число нечетное'
         end
       else
         'Это не число'
       end

puts type
