# frozen_string_literal: true

# Пусть имеется хэш COLORS с цветами радуги: ключом выступает название цвета на английском языке, значением — на русском. 
# В глобальной области создайте методы red, orange, ..., violete, 
# которые бы возвращали соответствующее название цвета на русском языке:
# COLORS = {
#   red: 'красный',
#   orange: 'оранжевый',
#   yellow: 'желтый',
#   green: 'зеленый',
#   blue: 'голубой',
#   indigo: 'синий',
#   violet: 'фиолетовый'
# }

COLORS = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'желтый',
  green: 'зеленый',
  blue: 'голубой',
  indigo: 'синий',
  violet: 'фиолетовый'
}.freeze

COLORS.each do |eng, rus|
  define_method eng do
    rus
  end
end

puts green
puts yellow
