# frozen_string_literal: true

require 'faraday'

puts Faraday.get('https://gb.ru').body.scan(/\+7\d{3,}/)
