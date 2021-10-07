# frozen_string_literal: true

a = %w[red orange yellow green gray indigo violet]
b = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]

p a.map(&:to_sym).zip(b).to_h
