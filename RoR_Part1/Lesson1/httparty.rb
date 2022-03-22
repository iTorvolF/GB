# frozen_string_literal: true

require 'httparty'

puts HTTParty.get('https://gb.ru/courses').body.lines.count
