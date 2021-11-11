# frozen_string_literal: true

class Integer
  def to_a(numsys)
    case numsys
    when 2
      to_s(2).split('').map(&:to_i)
    when 8
      to_s(8).split('').map(&:to_i)
    when 16
      to_s(16).split('').map { |x| x }
    else
      raise 'Ошибка! Нет такой системы счисления! '
    end
  end
end

p 10.to_a(2)
p 10.to_a(8)
p 10.to_a(16)
