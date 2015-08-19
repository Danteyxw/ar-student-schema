require_relative '../config'

class UpdateStudents < ActiveRecord::Migration
    add_column :students, :teacher_id, :integer
end