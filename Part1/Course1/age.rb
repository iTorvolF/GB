# frozen_string_literal: true

require 'date'

birthday = DateTime.new(1990, 1, 3)
age = (DateTime.now - birthday) / 365.25

puts age.to_i
