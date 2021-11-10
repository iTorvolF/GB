# frozen_string_literal: true

arr = [1, 2, 3, 4, 5]

p arr.each_with_object([]) { |i, x|
    x << i if i.odd?
  }

p arr.reduce([]) { |x, i| x << i if i.odd?; x }