# frozen_string_literal: true

# Есть массив %w[cat dog tiger]. 
# Измените его так, чтобы все элементы были написаны с заглавной буквы.

arr = %w[cat dog tiger]
result = arr.map(&:capitalize)

p result
