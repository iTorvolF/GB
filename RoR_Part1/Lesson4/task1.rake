# frozen_string_literal: true

namespace :dev_create do
  desc 'Создаём в tmp-каталоге файл development.txt в который записана текущая дата и время.'
  task :date_time do
    File.write('./tmp/development.txt', Time.now)
  end
end
