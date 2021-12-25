# frozen_string_literal: true

# Создайте программу, которая выводит самую длинную и самую короткую строки файлов. 
# Кроме того, необходимо вывести количество символов в этих строках.

max_line = IO.foreach('words.txt').max_by(&:size)
min_line = IO.foreach('words.txt').min_by(&:size)

p max_line
p max_line.size
p min_line
p min_line.size
