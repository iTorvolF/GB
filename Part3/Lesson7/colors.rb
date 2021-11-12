# frozen_string_literal: true

colors = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'желтый',
  green: 'зеленый',
  blue: 'голубой',
  indigo: 'синий',
  violet: 'фиолетовый'
}

rus = colors.each_value { |x| p x }.to_a
eng = colors.each_key { |x| p x }.to_a

new_colors = colors.invert
p new_colors
