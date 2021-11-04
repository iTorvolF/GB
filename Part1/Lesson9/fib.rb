# frozen_string_literal: true

def fibo(n)
  return n if n < 2

  fibo(n - 2) + fibo(n - 1)
end

puts fibo(10)
