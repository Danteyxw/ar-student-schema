require_relative '../config'

class RemoveStudentsKey < ActiveRecord::Migration
    remove_column :students, :teacher_id
end