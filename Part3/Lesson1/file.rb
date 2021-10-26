# frozen_string_literal: true

file_name = gets
file_size = gets.to_i

if File.exist?(file_name)
  p 'Файл существует!'
else
  File.open('file_name', 'a+') do |file|
    file.write 'some_text' until file.size == file_size
  end
end
