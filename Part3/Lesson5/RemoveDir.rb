# frozen_string_literal: true

# Создайте метод рекурсивного удаления содержимого каталога со всеми вложенными подкаталогами.

require 'fileutils'

FileUtils.rm_r Dir.glob('./tmp/*')
