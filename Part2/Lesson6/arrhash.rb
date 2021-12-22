# frozen_string_literal: true

# Имеются два массива:
# %w[red orange yellow green gray indigo violet]
# и
# %w[красный оранжевый желтый зеленый голубой синий фиолетовый]
# Создайте из них хэш:
# {red: 'красный', orange: 'оранжевый', yellow: 'желтый', green: 'зеленый', blue: 'голубой', indigo: 'синий', violet: 'фиолетовый'}

a = %w[red orange yellow green gray indigo violet]
b = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]

p a.map(&:to_sym).zip(b).to_h
