# frozen_string_literal: true

EXTENSION = '.txt'
@total = 0

def scan(path)
  entries = Dir.new(path)
               .entries
               .reject { |x| %w[. ..].include? x }
               .map { |x| File.join(path, x) }

  entries.each do |item|
    scan(item) if File.directory?(item)
    counter(item) if File.extname(item) == EXTENSION
  end
end

def counter(file)
  File.open(file) do |x|
    @total += x.reduce(0) { |count| count + 1 }
  end
end

print 'Введите адрес директории: '
dir = File.join(gets.chomp)
scan(dir)
puts "Всего строк: #{@total}"
