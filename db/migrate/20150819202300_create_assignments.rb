require_relative '../config'

class CreateAssignments
    def change
        create_table :assignments do |t|
            t.integer :student_id
            t.integer :teacher_id
            t.timestamp null: false
        end
    end
end