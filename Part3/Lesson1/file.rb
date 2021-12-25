# frozen_string_literal: true

# Создайте программу, которая принимает в качестве аргумента целое число и имя файла. 
# Если в текущем каталоге файла с таким именем не существует, программа должна создать файл с этим именем. 
# Размер файла при этом должен в точности соответствовать заданному числу, содержимое файла — на ваше усмотрение.

file_name = gets
file_size = gets.to_i

if File.exist?(file_name)
  p 'Файл существует!'
else
  File.open('file_name', 'a+') do |file|
    file.write 'some_text' until file.size == file_size
  end
end
