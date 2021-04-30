class User < ApplicationRecord
    self.primary_key = 'user_id'
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone_number, length: {minimum: 9, maximum: 12}, presence: true

    belongs_to :college, foreign_key: "college_number"
end
