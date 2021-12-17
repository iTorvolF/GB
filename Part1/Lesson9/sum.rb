# frozen_string_literal: true

# Создайте метод sum, который принимает любое количество числовых аргументов и возвращает их сумму.

def sum(*params)
  p params.sum
end

sum(1, 2, 3, 4, 5, 6, 7)
