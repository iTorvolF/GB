# frozen_string_literal: true

def fib0(n)
  fib0 = [0, 1]
  (n - 1).times { fib0 << fib0[-1] + fib0[-2] }
  puts fib0.join(', ')
end

fib0(10)
