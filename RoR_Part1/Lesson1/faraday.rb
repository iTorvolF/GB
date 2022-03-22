# frozen_string_literal: true

require 'faraday'

puts Faraday.get('https://gb.ru/courses').body.lines.count
