##
# Класс пользователь
class User
	##
	# Выводит в стандартный поток имя и профессию пользователя
	#
	# = Пример использования
	#
	# user = User.new
	#
	# user.fio
	#
	# user.profession
	def fio
		'Иванов Иван Иванович' 
	end
	
	def profession
		'Инженер'
	end

end	

user = User.new

puts 'Фамилия Имя Отчество: ' + user.fio
puts 'Профессия: ' + user.profession