# frozen_string_literal: true

# Создайте класс пользователя User, объекты которого сохраняют фамилию, имя и отчество пользователя. 
# Напишите программу, которая создаёт два объекта класса User. 
# В один (student) поместите ваши фамилию, имя и отчество, в другой — ФИО вашего преподавателя (teacher). 
# Используя объекты student и teacher, выведите ФИО вас и преподавателя в консоль.

class User
  def set_student(student)
    @student = student
  end

  attr_reader :student, :teacher

  def set_teacher(teacher)
    @teacher = teacher
  end
end

user = User.new
user.set_student('Иванов Иван Иванович')
user.set_teacher('Петров Петр Петрович')

puts "Имя студента: #{user.student}"
puts "Имя преподавателя: #{user.teacher}"
