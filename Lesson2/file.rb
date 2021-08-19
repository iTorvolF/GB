class User

	def fio
		'Иванов Иван Иванович' 
	end
	
	def profession
		'Инженер'
	end

end	

user = User.new

file = File.open('user.txt' , 'a+')
file.puts('Имя: ' + user.fio) 
file.puts('Профессия: ' + user.profession)
