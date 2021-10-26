# frozen_string_literal: true

def random
  File.readlines('words.txt').sample
end

p random
