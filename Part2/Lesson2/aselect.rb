# frozen_string_literal: true

# Есть массив %w[cat dog tiger]. 
# Верните массив, состоящий только из элементов, где встречается символ t.

arr = %w[cat dog tiger]
result = arr.select { |a| a.include? 't' }

p result
