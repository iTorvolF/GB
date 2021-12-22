# frozen_string_literal: true

# Преобразуйте массив вида:
# %w[first second third]
# в хэш вида:
# {first: 'Fst (1)', second: 'Snd (2)', third: 'Trd (3)'}
# Выражение преобразования должно быть однострочным.

p %w[first second third].map(&:to_sym).zip(['Fst (1)', 'Snd (2)', 'Trd (3)']).to_h
