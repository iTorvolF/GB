# frozen_string_literal: true

# Независимо от того, как создано изображение формата JPEG, оно содержит в себе дату создания. 
# Создайте скрипт, который автоматически извлекал бы эту дату из содержимого JPEG-файла.

require 'exifr/jpeg'

p EXIFR::JPEG.new('1.JPG').width
p EXIFR::JPEG.new('1.JPG').height
p EXIFR::JPEG.new('1.JPG').exif?
p EXIFR::JPEG.new('1.JPG').date_time
p EXIFR::JPEG.new('1.JPG').exposure_time.to_s
