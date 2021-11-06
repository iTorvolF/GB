# frozen_string_literal: true

require 'exifr/jpeg'

p EXIFR::JPEG.new('1.JPG').width
p EXIFR::JPEG.new('1.JPG').height
p EXIFR::JPEG.new('1.JPG').exif?
p EXIFR::JPEG.new('1.JPG').date_time
p EXIFR::JPEG.new('1.JPG').exposure_time.to_s
