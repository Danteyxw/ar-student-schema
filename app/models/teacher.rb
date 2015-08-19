require_relative '../../db/config'

class Teacher < ActiveRecord::Base
    validates :email, uniqueness: true

    has_many :assignments, foreign_key: :teacher_id
    has_many :teachers, through: :assignments

    def name
        self.first_name + " " + self.last_name
    end
end