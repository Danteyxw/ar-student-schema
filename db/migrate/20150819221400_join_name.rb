require_relative '../config'

class JoinName < ActiveRecord::Migration
    def up
        add_column :students, :name, :string
        add_column :teachers, :name, :string

        Student.all.each do |student|
            student.update(name: student.first_name + " " + student.last_name)
        end

        Teacher.all.each do |teacher|
            teacher.update(name: teacher.first_name + " " + teacher.last_name)
        end

        remove_column :students, :first_name
        remove_column :students, :last_name
        remove_column :teachers, :first_name
        remove_column :teachers, :last_name
    end

    def down
        add_column :students, :first_name, :string
        add_column :students, :last_name, :string
        add_column :teachers, :first_name, :string
        add_column :teachers, :last_name, :string

        Student.all.each do |student|
            name = student.name.split
            student.update(first_name: name.first, last_name: name.last)
        end

        Teacher.all.each do |teacher|
            name = teacher.name.split
            teacher.update(first_name: name.first, last_name: name.last)
        end

        remove_column :students, :name
        remove_column :teachers, :name
    end
end