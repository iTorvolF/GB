# frozen_string_literal: true

p %w[first second third].map(&:to_sym).zip(['Fst (1)', 'Snd (2)', 'Trd (3)']).to_h
