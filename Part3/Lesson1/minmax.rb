# frozen_string_literal: true

max_line = IO.foreach('words.txt').max_by(&:size)
min_line = IO.foreach('words.txt').min_by(&:size)

p max_line
p max_line.size
p min_line
p min_line.size
