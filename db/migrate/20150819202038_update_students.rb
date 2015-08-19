require_relative '../config'

class UpdateStudents < ActiveRecord::Migration
    remove_column :teacher_id
end