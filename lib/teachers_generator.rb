require_relative '../app/models/teacher.rb'
require 'faker'

module TeachersGenerator
    def self.generate
        n = 9

        n.times do |i|
            first_name = Faker::Name.first_name
            last_name = Faker::Name.last_name

            Teacher.create(
                first_name: first_name,
                last_name: last_name,
                email: Faker::Internet.email(first_name + "." + last_name),
                phone: Faker::PhoneNumber.cell_phone
            )
        end
    end
end