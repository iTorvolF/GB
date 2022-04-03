# frozen_string_literal: true

namespace :ruby_lines do
  desc 'Подсчитываем количество строк ruby-файлов текущего rails-проекта.'
  task :count do
    total = 0
    Dir.glob('**/*.rb').each { |x| total += File.readlines(x).count }
    puts "Всего строк в ruby-файлах текущего rails-проекта: #{total}"
  end
end
