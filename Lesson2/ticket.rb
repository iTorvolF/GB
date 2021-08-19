class Ticket

	def event
		'Трудно быть рубистом'
	end	

	def date
		'11.08.2021'
	end

	def price
		3500
	end

	def row
		4
	end
	
	def seat
		12
	end	
end

ticket = Ticket.new

puts 'Название фильма: ' + ticket.event
puts 'Дата фильма: ' + ticket.date	
puts 'Цена билета: ' + ticket.price.to_s
puts 'Ряд: ' + ticket.row.to_s
puts 'Место: ' + ticket.seat.to_s