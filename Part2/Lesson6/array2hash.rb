# frozen_string_literal: true

# Дан массив:
# %i(first second third)
# Превратите его в хэш:
# {first: 1, second: 2, third: 3}

a1 = %i[first second third]
a2 = [1, 2, 3]
p a1.zip(a2).to_h
