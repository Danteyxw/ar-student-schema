require_relative '../app/models/teacher.rb'

target = Teacher.find(9)
clone = Teacher.create(
                first_name: target.first_name + " clone",
                last_name: target.last_name + " clone",
                email: target.email,
                phone: target.phone
            )

p Teacher.find(9).email == Teacher.find(10).email