require_relative '../app/models/student'
require_relative '../app/models/teacher'

teachers = Teacher.all
students = Student.all

students.each do |student|
    student.teacher_id = teachers.sample.id
    student.save
end