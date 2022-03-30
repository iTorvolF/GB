# frozen_string_literal: true

irb = File.readlines('irb.txt', chomp: true).to_a
rails_c = File.readlines('rails_c.txt', chomp: true).to_a

puts rails_c - irb
