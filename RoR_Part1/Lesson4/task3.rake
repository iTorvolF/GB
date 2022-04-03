# frozen_string_literal: true

namespace :ruby_files do
  desc 'Подсчитываем количество ruby-файлов в текущем rails-проекте.'
  task :count do
    puts "Ruby-файлов в текущем rails-проекте: #{Dir.glob('**/*.rb').count}"
  end
end
