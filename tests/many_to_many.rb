require_relative '../app/models/student'
require_relative '../app/models/teacher'
require_relative '../app/models/assignment'

s = Student.all
t = Teacher.all

p t.first
stu = t.first.assignments.first.student
stu.assignments.each { |x| p x.teacher }

# teach = s.first.assignemnts.teachers.first

# p s.first.assignments.teachers
# p teach.assignments.students
