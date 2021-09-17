# frozen_string_literal: true

arr = %w[Понедельник Вторник Среда
         Четверг Пятница Суббота Воскресенье]

arr.select { |week| puts week if week[0] == 'С' }
