# frozen_string_literal: true

def factorial(n = 0)
  (1..n).inject(:*)
end

puts factorial(5)
