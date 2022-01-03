# frozen_string_literal: true

# Создайте собственный вариант итератора cycle, назвав его for. 
# Откройте класс Array и добейтесь, 
# чтобы новый итератор был доступен для всех массивов:
# [1, 2, 3].cycle { |x| puts x }

class Array
  def for(num = nil)
    if num.nil?
      loop { yield self }
    else
      loop
      (0...num).each { yield self }
    end
  end
end

[1, 2, 3].for(2) { |x| puts x }
