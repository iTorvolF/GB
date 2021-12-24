# frozen_string_literal: true

# Создайте программу, которая принимает в качестве аргумента имя файла
# и выводит из файла случайную строку. 

def random
  File.readlines('words.txt').sample
end

p random
