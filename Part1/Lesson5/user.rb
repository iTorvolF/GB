# frozen_string_literal: true

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
