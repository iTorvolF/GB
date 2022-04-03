# frozen_string_literal: true

# gem install adroit-age

namespace :age do
  desc 'Получаем дату рождения пользователя и выводим его возраст'
  task :birthday do
    print 'Введите дату рождения: '
    birthday = gets.to_date
    puts "Ваш возраст: #{birthday.find_age}"
  end
end
