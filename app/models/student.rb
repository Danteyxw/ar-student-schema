require_relative '../../db/config'

class Student < ActiveRecord::Base
    validates :email, format: { with: /.+@.+[.][^.]{2,}\z/ }
    validates :age, numericality: { greater_than: 4 }
    validates :email, uniqueness: true

    def name
        self.first_name + " " + self.last_name
    end

    def age
        current_date = Date.today
        birthday = self.birthday

        age = current_date.year - birthday.year - ((current_date.month > birthday.month || (current_date.month == birthday.month && current_date.day < birthday.day)) ? 0:1)
    end
end