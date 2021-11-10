# frozen_string_literal: true

matrix = [
  [1, 2, 3, 7, 8],
  [4, 5, 6, 6, 1],
  [7, 8, 9, 4, 3],
  [1, 4, 8, 7, 4],
  [5, 2, 5, 7, 2]
]

p matrix.each_with_index.reduce(0) { |sum, (el, i)| sum + el[i] }
