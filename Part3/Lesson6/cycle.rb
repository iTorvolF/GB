# frozen_string_literal: true

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
