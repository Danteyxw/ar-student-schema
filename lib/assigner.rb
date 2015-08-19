require_relative '../app/models/student'
require_relative '../app/models/teacher'
require_relative '../app/models/assignment'

module Assigner
    def self.assign
        students = Student.all
        teachers = Teacher.all

        students.each do |student|
            assigned = []

            3.times do
                assignment = Assignment.new
                assignment.student_id = student.id
                assignment.teacher_id = (teachers - assigned).sample.id
                assignment.save
            end
        end
    end
end