# frozen_string_literal: true

arr = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]]]

def walk(arr)
  arr.map { |x| puts x }.join
end

puts walk(arr)
