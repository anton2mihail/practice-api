class College < ApplicationRecord
    self.primary_key = 'college_id'

    has_many :users, primary_key: 'college_id', foreign_key: 'college_number'
end
