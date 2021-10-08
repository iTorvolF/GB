# frozen_string_literal: true

class Integer
  KILOBYTES = 1024
  MEGABYTES = 1_048_576
  GIGABYTES = 1_073_741_824
  TERABYTES = 1_099_511_627_776

  def kilobytes
    self * KILOBYTES
  end

  def megabytes
    self * MEGABYTES
  end

  def gigabytes
    self * GIGABYTES
  end

  def terabytes
    self * TERABYTES
  end
end

puts 5.kilobytes
puts 10.megabytes
