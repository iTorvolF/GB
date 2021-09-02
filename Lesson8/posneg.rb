# frozen_string_literal: true

a = -1

type = case a
       when Integer
         if a.positive?
           puts 'Число положительное'
         elsif a.negative?
           puts 'Число отрицательное'
         else
           a.zero?
           puts 'Число равно нулю'
         end
       else
         'Это не число'
       end

puts type
