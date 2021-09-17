# frozen_string_literal: true

arr = %w[cat dog tiger]
result = arr.select { |a| a.include? 't' }

p result
